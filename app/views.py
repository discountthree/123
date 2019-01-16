import hashlib
import random
import time
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from app.models import Banner, Recommendation, Goods, DailySurprise, User, Shopcar, Order, OrderGoods


# 首页
def homepage(request, liIndex):
    # 轮播数据
    banners = Banner.objects.all()
    # E仔推荐精品
    recommendations = Recommendation.objects.all()
    # 天天惊喜
    liIndex = request.COOKIES.get('liIndex', 0)
    i = int(liIndex)
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
            user.password = generate_password(request.POST.get('password1'))
            user.token = generate_token()

            user.save()

            response = redirect('app:homepage1')
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

            response = redirect('app:homepage1')
            request.session['token'] = user.token

            return response
        else:
            return render(request, 'login.html', context={'err': '账号或密码错误'})


# 退出登录
def logout(request):
    response = redirect('app:homepage1')
    request.session.flush()

    return response


# 购物车
def shopcar(request):
    token = request.session.get('token')
    data = {}
    if token:
        user = User.objects.get(token=token)
        data['name'] = user.name
        shopcars = Shopcar.objects.filter(user_id=user.id)
        # print(goods_list)
        if shopcars.count():
            goods_list = []
            totalprice = 0
            for i in shopcars:
                goods = DailySurprise.objects.get(pk=i.goods_id)
                goods_list.append(goods)
                goods.num = Shopcar.objects.get(goods_id=goods.id).num
                goods.is_select = Shopcar.objects.get(goods_id=goods.id).is_select
                # print(num)
                if goods.is_select:
                    totalprice = totalprice + goods.num * float(goods.price)

            data['goods_list'] = goods_list
            data['totalprice'] = totalprice

            return render(request, 'shopcar.html', context=data)
        else:
            data['msg'] = '还未添加商品'
            return render(request, 'shopcar.html', context=data)

    else:
        return redirect('app:login')


# 商品详情(DailySurprise)
def goodsdetail(request, goodsid):
    # 显示商品详情
    goods = DailySurprise.objects.get(pk=goodsid)

    token = request.session.get('token')
    data = {'goods': goods}
    # 判断是否登录
    if token:
        user = User.objects.get(token=token)
        data['name'] = user.name

        shopcar = Shopcar.objects.filter(goods=goods)
        if shopcar.count():
            num = shopcar.first().num
            data['num'] = num
        else:
            data['num'] = 0

        return render(request, 'goodsdetail.html', context=data)
    else:
        data['num'] = 0
        return render(request, 'goodsdetail.html', context=data)


# 商品详情
def goodsdetail2(request, goodsid):
    goods = Goods.objects.get(id=goodsid)

    data = {
        'goods': goods,
    }

    token = request.session.get('token')
    if token:
        user = User.objects.get(token=token)
        data['name'] = user.name
        return render(request, 'goodsdetail2.html', context=data)
    else:
        return render(request, 'goodsdetail2.html', context=data)


# 购物车加操作
def addshopcar(request):
    token = request.session.get('token')
    goodsid = request.GET.get('goodsid')
    data = {}
    # 登录状态
    if token:
        # 获取用户
        user = User.objects.get(token=token)
        # 获取商品
        goods = DailySurprise.objects.get(pk=goodsid)
        shopcars = Shopcar.objects.filter(user=user).filter(goods=goods)
        # 商品已存在,只需修改数量
        if shopcars.exists():
            shopcar = shopcars.first()
            shopcar.num = shopcar.num + 1
            shopcar.save()
        # 第一次添加商品
        else:
            shopcar = Shopcar()
            shopcar.user = user
            shopcar.goods = goods
            shopcar.num = 1
            shopcar.save()
        return JsonResponse({
            'msg': '添加: {}到购物车成功'.format(goods.name),
            'num': shopcar.num,
            'status': 1,
        })
    else:
        data['msg'] = '请登录后操作'
        data['status'] = -1
        return JsonResponse(data)


# 购物车减操作
def delshopcar(request):
    token = request.session.get('token')
    goodsid = request.GET.get('goodsid')

    user = User.objects.get(token=token)
    goods = DailySurprise.objects.get(pk=goodsid)

    shopcar = Shopcar.objects.filter(user=user).filter(goods=goods).first()
    shopcar.num = shopcar.num - 1
    data = {}
    if shopcar.num > 0:
        shopcar.save()
        data['msg'] = '购物车删减成功'
        data['status'] = 1
        data['num'] = shopcar.num

        return JsonResponse(data)
    else:
        shopcar.delete()
        data['msg'] = '购物车删减成功'
        data['status'] = 1
        data['num'] = 0
        return JsonResponse(data)


# 改变选中状态
def changestatus(request):
    goodsid = request.GET.get('goodsid')
    goods = Shopcar.objects.get(goods_id=goodsid)
    goods.is_select = not goods.is_select
    goods.save()

    data = {
        'msg': '状态修改成功',
        'status': 1,
        'is_select': goods.is_select
    }
    return JsonResponse(data)


# 改变全选状态
def changeisall(request):
    token = request.session.get('token')
    user = User.objects.get(token=token)
    shopcars = Shopcar.objects.filter(user_id=user.id)

    # 全选/取消全选
    isall = request.GET.get('isall')
    if isall == 'true':
        isall = True
    else:
        isall = False

    for shopcar in shopcars:
        shopcar.is_select = isall
        shopcar.save()

    data = {
        'msg': '全选/取消全选',
        'status': 1
    }

    return JsonResponse(data)

# 创建订单号
def generate_identifier():
    temp = str(random.randrange(1000, 10000)) + str(int(time.time())) + str(random.randrange(1000, 10000))
    return temp


# 生成订单
def generateorder(request):
    token = request.session.get('token')
    user = User.objects.get(token=token)

    order = Order()
    order.user = user
    order.identifier = generate_identifier()
    order.save()

    shopcars = Shopcar.objects.filter(user=user).filter(is_select=True)
    for shopcar in shopcars:
        ordergoods = OrderGoods()
        ordergoods.order = order
        ordergoods.goods = shopcar.goods
        ordergoods.number = shopcar.num
        ordergoods.save()

        shopcar.delete()

    data = {
        'msg': '下单成功',
        'status': 1,
        'orderid': order.id,
    }

    return JsonResponse(data)


# 订单详情
def orderdetail(request, orderid):
    token = request.session.get('token')
    if token:
        user = User.objects.get(token=token)
        order = Order.objects.get(id=orderid)

        data = {
            'name': user.name,
            'order': order,
        }
        return render(request, 'orderdetail.html', context=data)
    else:
        return redirect('app:login')



def orderlist(request):
    token = request.session.get('token')
    user = User.objects.get(token=token)
    orders = Order.objects.filter(user=user)

    data = {
        'name': user.name,
        'orders': orders,
    }

    return render(request, 'orderlist.html', context=data)


