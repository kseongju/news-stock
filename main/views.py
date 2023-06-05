from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from main.Okt import Okts

def index(request):
    return render(request, 'main.html')

def my_view(request):
    # result 값과 함께 컨텍스트 생성

    result = Okts()
    context = {'result': result}
    texts = '안녕'
    return render(request, 'main/my_template.html', {"context" : {'result': result}, "texts" : texts})
def news(request):

    return render(request, 'news.html')