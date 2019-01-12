from django.conf.urls import url

from app import views

urlpatterns = [
    url(r'^homepage/(\d+)/$', views.homepage, name='homepage'),

    url(r'^homepage/$', views.homepage1, name='homepage1'),

    url(r'^shopcar/$', views.shopcar, name='shopcar'),

    url(r'^goodsdetail/(\d+)/$', views.goodsdetail, name='goodsdetail'),

    url(r'^goods2/(\d+)/$', views.goods2, name='goods2'),

    url(r'^register/$', views.register, name='register'),

    url(r'^login/$', views.login, name='login'),

    url(r'^logout/$', views.logout, name='logout'),

]
