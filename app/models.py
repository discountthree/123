from django.db import models


# Create your models here.
class Banner(models.Model):
    img = models.CharField(max_length=100)


# 精品推荐
class Recommendation(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    price = models.CharField(max_length=20)
    reason = models.CharField(max_length=20)
    p = models.CharField(max_length=100)
