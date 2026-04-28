from django.db import models

# Site-wide settings
class SiteSetting(models.Model):
    key = models.CharField(max_length=100, unique=True)
    value = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='settings/', blank=True, null=True)

    def __str__(self):
        return self.key


# Contact form submissions
class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    subject = models.CharField(max_length=200)
    message = models.TextField()

    def __str__(self):
        return f"{self.name} - {self.subject}"


######## portfolio model ############
class Portfolio(models.Model):
    product_title = models.CharField(max_length=255)
    product_tag = models.CharField(max_length=255)
    product_desc = models.TextField()
    product_img = models.ImageField(upload_to='portfolio/')

    def __str__(self):
        return self.product_title

class About(models.Model):
    about_title = models.CharField(max_length=200)
    about_img = models.ImageField(upload_to='about_images/')
    about_heading = models.CharField(max_length=200)
    about_subheading = models.TextField()

    def __str__(self):
        return self.about_title
    
    ## You can add more models here as needed, such as TeamMember, Service, etc.
class About(models.Model):
    about_title = models.CharField(max_length=200)
    about_img = models.ImageField(upload_to='about_images/')
    about_heading = models.CharField(max_length=200)
    about_subheading = models.TextField()
    about_tag = models.CharField(max_length=100, default='General')

    def __str__(self):
        return self.about_title 
