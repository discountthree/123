from django.conf.urls import url

from app import views

urlpatterns = [
    url(r'^$', views.homepage, name='homepage'),
    url(r'^homepage/(\d+)/$', views.homepage1, name='homepage1'),
    url(r'^register/$', views.register, name='register'),
    url(r'^login/$', views.login, name='login'),
    url(r'^shopcar/$', views.shopcar, name='shopcar'),
    url(r'^goods/(\d+)/$', views.goods, name='goods'),
    url(r'^goods2/$', views.goods2, name='goods2'),
    url(r'^daily/$', views.daily, name='daily'),
    url(r'^logout/$', views.logout, name='logout'),
]
