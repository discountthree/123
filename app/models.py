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
