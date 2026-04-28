from urllib import request

from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.auth.models import User
from matplotlib.pyplot import title
from .form import UserRegisterForm   # <-- Make sure forms.py exists 
from .models import SiteSetting
from .models import Portfolio
from django.http import HttpResponse

from .models import About






def home1(request):
    title_obj = SiteSetting.objects.filter(key='Home_title').first()
    title = title_obj.value if title_obj else "Home"
    logo = SiteSetting.objects.filter(key='logo').first() 
    portfolios = Portfolio.objects.all()
    if request.method == "POST":
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        message = request.POST.get('message')

        Contact.objects.create(
            name=name,
            email=email,
            subject=subject,
            message=message
        )

    return render(request,'index.html', {'title': title, 'logo': logo, 'portfolios': portfolios})  
def about(request):
   title_obj = SiteSetting.objects.filter(key='about').first()
   title = title_obj.value if title_obj else "about"
   portfolios = Portfolio.objects.all()
   about_data = About.objects.all()  # Get all About entries
   if 'username' not in request.session:
       return redirect('login')  # name of your login URL
   return render(request,'about.html',{'portfolios': portfolios, 'about_data': about_data})


def contact(request):             
    title_obj = SiteSetting.objects.filter(key='contact').first()
    title = title_obj.value if title_obj else "contact"
    portfolios = Portfolio.objects.all()   # 👈 same as index
    return render(request,'contact.html',{'portfolios': portfolios})


def portfolios(request):
   title_obj = SiteSetting.objects.filter(key='portfolios').first()
   title = title_obj.value if title_obj else "portfolios"
def portfolio(request):
    portfolios = Portfolio.objects.all()  # Get all portfolio items
    return render(request, 'portfolio.html', {'portfolios': portfolios})

   

def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.set_password(form.cleaned_data['password'])  # encrypt password
            user.save()
            return redirect('home')   # ya home page
    else:
        form = UserRegisterForm()

    return render(request, 'register.html', {'form': form})



from .models import Contact

def contactform(request):
    if request.method == "POST":
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        message = request.POST.get('message')

        Contact.objects.create(
            name=name,
            email=email,
            subject=subject,
            message=message
        )

    return render(request, 'index.html')



from django.http import JsonResponse

from django.shortcuts import render

def index(request):
    if request.method == "POST":

        name = request.POST.get("name")
        email = request.POST.get("email")
        subject = request.POST.get("subject")
        message = request.POST.get("message")

    

        # ALWAYS return JSON for AJAX
        return JsonResponse({
            "message": "Message sent successfully!"
        })

    return render(request, "index.html")



from django.http import JsonResponse
from .models import Contact

def contact_ajax(request):
    if request.method == "POST":

        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        message = request.POST.get('message')

        Contact.objects.create(
            name=name,
            email=email,
            subject=subject,
            message=message
        )

        return JsonResponse({
            "message": "Message sent successfully!"
        })

    return JsonResponse({"error": "Invalid request"}, status=400)



def portfolio_detail(request, id):
    portfolio = get_object_or_404(Portfolio, id=id)
    return render(request, 'portfolio_detail.html', {'portfolio': portfolio})



##sessions 
##sessions set 
def set_session(request):
    #request.session['username'] = 'sonam'
    #request.session['password'] 
    #return HttpResponse("Session data set")
      if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        request.session['username'] =username
        request.session['pass'] =password
      return render(request, "login.html")

#sessions get
def get_session(request):
   # username = request.session.get('username', 'Guest')
    #return HttpResponse(f"Hello {username}")
    username = request.session.get('username')
    userpassword = request.session.get('pass')
    userinfo = {
        'user': username,
        'userpass': userpassword,
        
        
    }
    
    if username == "sonam" and userpassword == "1234":
            request.session['username'] = username
            return redirect('home')
    else:
            error = "Invalid username or password"

    return HttpResponse(str(userinfo))

##session delete
def delete_session(request):
    if 'username' in request.session:
       del request.session['username']
    return render(request, "logout.html")
####
from django.shortcuts import redirect

def logout_view(request):
    request.session.flush()
    return redirect('login')





###
from django.shortcuts import render, redirect

def dashboard_view(request):
    user = request.session.get('user')

    if user:
        return render(request, 'dashboard.html', {
            'username': user
        })
    else:
        return redirect('login')