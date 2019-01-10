from django.shortcuts import render

from app.models import Banner, Recommendation


def homepage(request):
    banners = Banner.objects.all()
    recommendations = Recommendation.objects.all()
    data = {
        'banners': banners,
        'recommendations': recommendations,
    }

    return render(request, 'homepage.html', context={'data': data})


def register(request):
    return render(request, 'register.html')


def login(request):
    return render(request, 'login.html')


def shopcar(request):
    return render(request, 'shopcar.html')
