from django import forms
from .models import Usuario

class PostForm(forms.ModelForm):

    class Meta:
        model = Usuario
        fields = ('id_cam','idusuario','nombre','rut','password')