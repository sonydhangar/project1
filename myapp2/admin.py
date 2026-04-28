from django.contrib import admin
from django.utils.html import format_html
from .models import SiteSetting

@admin.register(SiteSetting)
class SiteSettingAdmin(admin.ModelAdmin):
    list_display = ('key', 'value', 'image_preview')

    def image_preview(self, obj):
        if obj.image:
            return format_html('<img src="{}" width="50" />', obj.image.url)
        return "-"
    
    image_preview.short_description = 'Logo Preview'
    
#### importing contact model to admin.py
from .models import Contact
admin.site.register(Contact)
### importing portfolio model to admin.py
from .models import Portfolio
admin.site.register(Portfolio)

### importing about model to admin.py
from .models import About

admin.site.register(About)

