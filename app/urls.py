from django.conf.urls import url

from app import views

urlpatterns = [
    # 主页
    url(r'^homepage/(\d+)/$', views.homepage, name='homepage'),
    # 主页
    url(r'^homepage/$', views.homepage1, name='homepage1'),
    # 购物车
    url(r'^shopcar/$', views.shopcar, name='shopcar'),
    # 商品详情一
    url(r'^goodsdetail/(\d+)/$', views.goodsdetail, name='goodsdetail'),
    # 商品详情二
    url(r'^goodsdetail2/(\d+)/$', views.goodsdetail2, name='goodsdetail2'),
    # 注册
    url(r'^register/$', views.register, name='register'),
    # 登录
    url(r'^login/$', views.login, name='login'),
    # 注销
    url(r'^logout/$', views.logout, name='logout'),
    # 添加到购物车
    url(r'^addshopcar/$', views.addshopcar, name='addshopcar'),
    # 从购物车移除
    url(r'^delshopcar/$', views.delshopcar, name='delshopcar'),
    # 修改选中状态
    url(r'^changestatus/$', views.changestatus, name='changestatus'),
    # 全选或取消全选
    url(r'^changeisall/$', views.changeisall, name='changeisall'),
    # 生产订单号
    url(r'^generateorder/$', views.generateorder, name='generateorder'),
    # 订单详情
    url(r'^orderdetail/(\d+)/$', views.orderdetail, name='orderdetail'),

    url(r'^orderlist/$', views.orderlist, name='orderlist'),
]
