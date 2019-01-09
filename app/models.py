from django.db import models

# Create your models here.
class Banner(models.Model):
    img = models.CharField(max_length=100)