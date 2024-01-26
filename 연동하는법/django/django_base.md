# Django로 프로젝트 만들기(기초 편)

## 1. Django 개발 환경 설정.
```
$ pip install django
``` 
## 2. Django 프로젝트 시작.
study 프로젝트 만들기
```
$ django-admin startproject study
```
study라는 프로젝트 파일이 하나 생길 것이다.
## 3. 앱 생성하기.
```
$ code study
```
study 프로젝트를 vscode로 연다.
```python
python manage.py startapp review
```
## 4. settings 값 설정.
study에 있는 settings.py에 들어가서 review라는 앱을 등록해야한다.

이때 뒤에 **,** 표시도 무조건 해줘야한다.(중요)

```python
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'review',
]
```
## 5. url 연동시키기.
study에 있는 urls.py를 들어간 다음, 아래와 같이 추가시키도록 한다.
```python
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('review/', include('review.urls')),
]
```
## 6. review 앱에 urls.py 생성하기.
review에 urls.py를 만들고, 안에 코드를 생성해보자.
```python
# review/urls.py
# 이 두줄은 외우자
from django.urls import path
from . import views

urlpatterns = [
    # /review/hello/
    path('hello/', views.hello),
]
```
## 7. templates 만들기.
review 폴더 안에 templates라는 폴더를 만들고 그안에 hello.html를 만든다.
## 8. hello.html 가공하기.
```python
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>hello Django</h1>
    <p>View - template</p>
</body>
</html>
```
1. **! 탭(tab)** 하면 기본 html 형식이 나온다

2. **h1 탭(tab)** 해서 hello Django 

3. **p 탭(tab)** 해서 view - template

나중에 주소/review/hello/ 를 했을때 hello ~~ template 가 나온다. (원하는 대로 꾸며보기)

## 9. views.py 가공하기
hello라는 함수를 받았을 때 'hello.html'로 응답해주는 식을 만들 것이다.

review에 있는 views.py로 가보자
```python
import random
from django.shortcuts import render

from django.http import HttpResponse

# Create your views here.

def hello(request):
    return render(request, 'hello.html')
```

## 마무리
CTRL + J 를 눌러 콘솔창을 킨 다음, 
```
$ python manage.py runserver
```
이렇게 입력하면, **http://127.0.0.1:8000/** 주소가 나올 것이다.

CTRL + 클릭을 하고 뒤 주소에 review/hello/를 입력하면 hello.html에서 썼던 결과물이 나올 것이다.


