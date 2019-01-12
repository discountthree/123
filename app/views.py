import hashlib
import random
import time

from django.http import HttpResponse
from django.shortcuts import render, redirect

from app.models import Banner, Recommendation, Goods, DailySurprise, User


# 首页
def homepage(request, res=1):
    # 轮播数据
    banners = Banner.objects.all()
    # E仔推荐精品
    recommendations = Recommendation.objects.all()
    # 天天惊喜

    if res == None:
        i = 0
    else:
        i = int(res)
    print(i, type(i))

    # dailysurprise = DailySurprise.objects.all()[0:4]
    dailysurprise = DailySurprise.objects.all()[i * 4:(i + 1) * 4]

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
        'times': ['09:00', '11:00', "13:00", '15:00', '19:00', '21:00', '明日上线'],
    }

    token = request.session.get('token')
    if token:
        user = User.objects.get(token=token)
        data['name'] = user.name
        return render(request, 'homepage.html', context=data)
    else:
        return render(request, 'homepage.html', context=data)


def homepage1(request):
    return redirect('app:homepage', 0)


# 生成token
def generate_token():
    token = str(time.time()) + str(random.random())
    md5 = hashlib.md5()
    md5.update(token.encode('utf-8'))
    return md5.hexdigest()


# 密码加密
def generate_password(password):
    md5 = hashlib.md5()
    md5.update(password.encode('utf-8'))
    return md5.hexdigest()


# 注册
def register(request):
    if request.method == 'GET':
        return render(request, 'register.html')
    elif request.method == 'POST':
        name = request.POST.get('name')
        users = User.objects.filter(name=name)
        # 判断用户是否存在
        if users.count():
            return render(request, 'register.html', context={'err1': '用户已存在'})
        else:
            user = User()
            user.name = name
            user.email = request.POST.get('email')
            password1 = generate_password(request.POST.get('password1'))
            password2 = generate_password(request.POST.get('password2'))

            if password1 == password2:
                user.password = password1
            else:
                return render(request, 'register.html', context={'err2': '密码不一致'})
            user.token = generate_token()

            user.save()

            response = redirect('app:homepage')
            request.session['token'] = user.token

            return response


# 登录
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
            return render(request, 'login.html', context={'err': '账号或密码错误'})


# 退出登录
def logout(request):
    response = redirect('app:homepage')
    request.session.flush()

    return response


# 购物车
def shopcar(request):
    token = request.session.get('token')
    if token:
        user = User.objects.get(token=token)
        return render(request, 'shopcar.html', context={'name': user.name})
    else:
        return render(request, 'shopcar.html')


# 商品详情
def goodsdetail(request, goodsid):
    goods = DailySurprise.objects.get(id=goodsid)

    data = {
        'goods': goods,
    }

    token = request.session.get('token')
    if token:
        user = User.objects.get(token=token)
        data['name'] = user.name
        return render(request, 'goodsdetail.html', context=data)
    else:
        return render(request, 'goodsdetail.html', context=data)


def goods2(request,goodsid):
    goods = Goods.objects.get(id=goodsid)

    data = {
        'goods': goods,
    }

    token = request.session.get('token')
    if token:
        user = User.objects.get(token=token)
        data['name'] = user.name
        return render(request, 'goods2.html', context=data)
    else:
        return render(request, 'goods2.html', context=data)

