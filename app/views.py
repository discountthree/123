from django.shortcuts import render

from app.models import Banner, Recommendation, Goods, DailySurprise


def homepage(request):
    # 轮播数据
    banners = Banner.objects.all()
    # E仔推荐精品
    recommendations = Recommendation.objects.all()
    # 天天惊喜
    dailysurprise = DailySurprise.objects.all()
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

    return render(request, 'homepage.html', context={'data': data})


def register(request):
    return render(request, 'register.html')


def login(request):
    return render(request, 'login.html')


def shopcar(request):
    return render(request, 'shopcar.html')


