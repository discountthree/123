#coding=utf-8
from django.db import models


# 轮播图
class Banner(models.Model):
    img = models.CharField(max_length=100)

# 用户
class User(models.Model):
    name = models.CharField(max_length=40, unique=True)
    email = models.CharField(max_length=40)
    password = models.CharField(max_length=40)
    token = models.CharField(max_length=256)

# 天天惊喜
class DailySurprise(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    price = models.CharField(max_length=20)
    preprice = models.CharField(max_length=20)
    activity = models.CharField(max_length=20)
    span = models.CharField(max_length=20)


# 精品推荐
class Recommendation(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    price = models.CharField(max_length=20)
    reason = models.CharField(max_length=20)
    p = models.CharField(max_length=100)


# 商品展示
class Goods(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    price = models.CharField(max_length=20)


# 购物车
class Shopcar(models.Model):
    user = models.ForeignKey(User)
    goods = models.ForeignKey(DailySurprise)
    num = models.IntegerField()
    is_select = models.BooleanField(default=True)


# 用户订单（关联用户和订单）
class Order(models.Model):
    # 关联用户
    user = models.ForeignKey(User)
    # 订单创建时间
    createtime = models.DateTimeField(auto_now_add=True)
    # 记录状态（-1过期、未付款0、已付款1，未发货2、待收货3...）
    status = models.IntegerField(default=0)
    # 订单号
    identifier = models.CharField(max_length=256)


# 商品订单（关联商品和订单）
class OrderGoods(models.Model):
    # 订单
    order = models.ForeignKey(Order)
    # 商品
    goods = models.ForeignKey(DailySurprise)
    # 个数
    number = models.IntegerField()