from django.shortcuts import render

from app.models import Banner


def homepage(request):
    banners = Banner.objects.all()

    return render(request, 'homepage.html', context={'banners': banners})


def register(request):
    return render(request, 'register.html')


def login(request):
    return render(request, 'login.html')


def shopcar(request):
    return render(request, 'shopcar.html')
