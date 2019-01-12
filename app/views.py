import hashlib
import random
import time

from django.http import HttpResponse
from django.shortcuts import render, redirect

from app.models import Banner, Recommendation, Goods, DailySurprise, User


def homepage(request):
    # 轮播数据
    banners = Banner.objects.all()
    # E仔推荐精品
    recommendations = Recommendation.objects.all()
    # 天天惊喜
    dailysurprise = DailySurprise.objects.all()[0:4]
    # 商品展示
    goods_list = {}
    for i in range(0, 6):
        for j in range(0, 8):
            goods_list['goods' + str(i)] = Goods.objects.all()[i * 8:(i + 1) * 8]
    # print(goods_list)

    data = {
        'banners': banners,
        'recommendations': recommendations,
        'dailysurprise': dailysurprise,
        'goods_list': goods_list,
    }

    token = request.session.get('token')
    if token:
        users = User.objects.filter(token=token)
        if users.count():
            user = users.first()
            name = user.name
            data['name'] = name
        else:
            name = None
            data['name'] = name
        return render(request, 'homepage.html', context=data)
    else:
        return render(request, 'homepage.html', context=data)


def generate_token():
    token = str(time.time()) + str(random.random())
    md5 = hashlib.md5()
    md5.update(token.encode('utf-8'))
    return md5.hexdigest()


def generate_password(password):
    md5 = hashlib.md5()
    md5.update(password.encode('utf-8'))
    return md5.hexdigest()


def register(request):
    if request.method == 'GET':
        return render(request, 'register.html')
    elif request.method == 'POST':
        user = User()
        user.name = request.POST.get('name')
        user.email = request.POST.get('email')
        password1 = generate_password(request.POST.get('password1'))
        password2 = generate_password(request.POST.get('password2'))

        if password1 == password2:
            user.password = password1
        else:
            return render(request, 'register.html', context={'err': '两次密码不一致'})
        user.token = generate_token()

        user.save()

        response = redirect('app:homepage')
        request.session['token'] = user.token

        return response


def login(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    elif request.method == 'POST':
        name = request.POST.get('name')
        password = generate_password(request.POST.get('password'))
        users = User.objects.filter(name=name).filter(password=password)
        # 登录时更新token
        if users.count():
            user = users.first()
            user.token = generate_token()
            user.save()

            response = redirect('app:homepage')
            request.session['token'] = user.token

            return response
        else:
            return render(request, 'homepage.html', context={'err': '账号或密码错误'})


def shopcar(request):
    return render(request, 'shopcar.html')


def goods(request, goodsid):
    goods = DailySurprise.objects.get(id=goodsid)
    return render(request, 'goods.html', context={'goods': goods})


def goods2(request):
    return render(request, 'goods2.html')


def daily(request):
    res = request.GET.get('index')
    print('nihao')
    return redirect('app:homepage1', res)


def homepage1(request, res=0):
    i = int(res)
    dailygoods = DailySurprise.objects.all()[i * 4:(i + 1) * 4]
    # for j in dailygoods:
    #     print(j.name)
    return render(request, 'homepage.html', context={'dailygoods': dailygoods})


def logout(request):
    response = redirect('app:homepage')
    request.session.flush()

    return response
