from django.shortcuts import get_object_or_404, redirect, render 
from django.http import HttpResponse
from django.forms import inlineformset_factory
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
# Create your views here.
from django.contrib.auth.hashers import make_password
from django.contrib.auth.models import User
# from .forms import 
# from .filters import 
from datetime import date,datetime
import os
from django.contrib import auth
from .models import *




def home(request):
    return render(request, 'gym/home.html')

def index(request):
    return render(request, 'gym/index.html')
def adminlogin(request):
    return redirect('admin')
def member_login(request):
    if request.method == 'POST':
        try:
            user=Member.objects.get(Email = request.POST['Email'],Password= request.POST['Password'])
            return redirect('home')
            
        except Member.DoesNotExist:
            return render (request,'gym/member_login.html', {'error':'Username or password is incorrect!'})
   
    else:
    
        return render(request, 'gym/member_login.html')

def view_bill(request):
   
    Email=request.COOKIES['Email']
    getdata = Bill.objects.filter(Customer_id=Email)
    
    #if not getdata and getdata is None:        
    if getdata.exists():
        get_amount=Bill.objects.values_list('Amount', flat=True).get(Customer_id=Email)
        get_payed=Bill.objects.values_list('Payed', flat=True).get(Customer_id=Email)
        Balance=int(get_amount)-int(get_payed)
        return render(request, 'gym/view_bill.html', {'getdata': getdata,'Balance': Balance})
    else :
       return render (request,'gym/view_bill.html', {'error':'there is no Bill'})

def view_diet(request):
    getdata = Diet.objects.all()
    
    if not getdata:
       return render (request,'gym/view_diet.html', {'error':'there is no diet'})
    
    else :
       
        return render(request, 'gym/view_diet.html', {'getdata': getdata})


def view_schedule(request):
    getdata = Schedule.objects.all()
    
    if not getdata:
       return render (request,'gym/view_schedule.html', {'error':'there is no schedule'})
    
    else :
       
        return render(request, 'gym/view_schedule.html', {'getdata': getdata})



def view_store(request):
    getdata = Store.objects.all()
    
    if not getdata:
       return render (request,'gym/view_store.html', {'error':'there is no supplements'})
    
    else :
       
        return render(request, 'gym/view_store.html', {'getdata': getdata})

def logout(request):
    if request.method == 'POST':
        auth.logout(request)
    return redirect('index') 