from django.urls import path
from . import views
from gym_management_app.settings import DEBUG, STATIC_URL, MEDIA_URL, MEDIA_ROOT

from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings

urlpatterns = [
    path('', views.index, name = 'index'),
   	path('admin/', views.adminlogin, name="adminlogin"),
    path('adminpanel/',views.adminpanel,name="adminpanel"),
    path('login/', views.login,name='login'),
    path('member_login/', views.member_login, name="member_login"),
    path('registration/', views.registration, name="registration"),
    path('trainer_login/', views.trainer_login, name="trainer_login"),
    path('logout/', views.logout, name="logout"),
    path('home/', views.home, name="home"),
    path('view_bill/', views.view_bill, name="view_bill"),
 	path('view_diet/', views.view_diet, name = 'view_diet'),
    path('view_schedule/', views.view_schedule, name = 'view_schedule'),
    path('view_store/', views.view_store, name = 'view_store')
    
          ] 
urlpatterns += staticfiles_urlpatterns()
if DEBUG:
   
    urlpatterns += static(MEDIA_URL, document_root = MEDIA_ROOT)
 