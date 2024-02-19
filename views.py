from django.shortcuts import get_object_or_404, redirect, render 
from django.http import HttpResponse
from django.forms import inlineformset_factory
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
# Create your views here.
from django.contrib.auth.hashers import make_password
from django.contrib.auth.models import User
from .models import UserProfile  # Import UserProfile if you have it

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
# def adminlogin(request):
#     return redirect('admin')

# def adminpanel(request):
#     return render(request,'adminpanel.html')


def member_login(request):
    if request.method == 'POST':
        try:
            user=Member.objects.get(Email = request.POST['Email'],Password= request.POST['Password'])
            return redirect('home')
            
        except Member.DoesNotExist:
            return render (request,'gym/member_login.html', {'error':'Username or password is incorrect!'})
   
    else:
    
        return render(request, 'gym/member_login.html')
def admin_login(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        
        # Authenticate the user
        user = authenticate(request, username=email, password=password)
        
        if user is not None:
            # User is authenticated, log them in
            login(request, user)
            return redirect('admin_dashboard')  # Redirect to admin dashboard upon successful login
        else:
            # Authentication failed, show error message
            return render(request, 'admin_login.html', {'error': 'Invalid email or password'})
    
    return render(request, 'admin_login.html')

def user_login(request):
    if request.method == 'POST':
        try:
            user=Member.objects.get(Email = request.POST['Email'],Password= request.POST['Password'])
            return redirect('admin')
            
        except Member.DoesNotExist:
            return render (request,'gym/member_login.html', {'error':'Username or password is incorrect!'})
   
    else:
    
        return render(request, 'gym/member_login.html')
    
def registration(request):
    if request.method == 'POST':
        username = request.POST.get('username', None)
        email = request.POST.get('email', None)
        password = request.POST.get('password', None)
        confirm_password = request.POST.get('confirm-password', None)

        if username and email and password:
            if User.objects.filter(email=email, username=username).exists():
                messages.success(request, "Email is already registered.")
            elif password != confirm_password:
                messages.success(request, "Passwords don't match. Enter correct password.")
            else:
                user_model = User.objects.create_user(username=username, email=email, password=password)
                user_model.set_password(password)  # Set the password securely
                user_model.is_active = True
                user_model.save()

                # Create UserProfile instance for the user
                user_profile = UserProfile(user=user_model)
                user_profile.save()

                # activateEmail(request, user_model, email)
                return redirect('member_login')

    return render(request, 'gym/registration.html')

def trainer_login(request):
    if request.method == 'POST':
        try:
            user = Trainer.objects.get(Email=request.POST['Email'], Password=request.POST['Password'])
            return redirect('home')
        except Trainer.DoesNotExist:
            return render(request, 'gym/trainer_login.html', {'error': 'Username or password is incorrect!'})
    else:
        return render(request, 'gym/trainer_login.html')

def consultant_login(request):
    if request.method == 'POST':
        try:
            user = Consultant.objects.get(Email=request.POST['Email'], Password=request.POST['Password'])
            return redirect('home')
        except Consultant.DoesNotExist:
            return render(request, 'gym/consultant_login.html', {'error': 'Username or password is incorrect!'})
    else:
        return render(request, 'gym/consultant_login.html')


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

def user_logout(request):
    if request.method == 'POST':
        auth.logout(request)
    return redirect('index') 


def admin_dashboard(request):
    return render(request, 'gym/admin_dashboard.html')

def user_list(request):
    users = Member.objects.all()
    return render(request, 'user_list.html', {'users': users})