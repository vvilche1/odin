from django import forms
from .models import Usuario

class UsuarioForm(forms.ModelForm):

    class Meta:
        model = Usuario
        fields = ('id_cam','idusuario','nombre','rut','password')
