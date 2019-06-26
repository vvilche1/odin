from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render, redirect
from django.urls import reverse
from django.views import generic
from django.views.generic import View

from .pdf import *
from .models import Campus, Usuario
from .forms import UsuarioForm

def list_usuario(request):
    usuarios = Usuario.objects.all()
    return render(request, 'inventario/index.html', {'usuarios': usuarios})

def create_usuario(request):
    form = UsuarioForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('list_usuario')

    return render(request, 'inventario/usuario-form.html', {'form': form})


def update_usuario(request, idusuario):
    usuarios = Usuario.objects.get(idusuario=idusuario)
    form = UsuarioForm(request.POST or None, instance=usuarios)

    if form.is_valid():
        form.save()
        return redirect('list_usuario')

    return render(request, 'inventario/usuario-form.html', {'form': form, 'usuarios': usuarios})


def delete_usuario(request, idusuario):
    usuarios = Usuario.objects.get(idusuario=idusuario)

    if request.method == 'POST':
        usuarios.delete()
        return redirect('list_usuario')

    return render(request, 'inventario/usuario-delete-confirm.html', {'usuarios': usuarios})

def generar_pdf(request):
    pdf=crearPdf(request)
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition']='filename="InventarioAnual.pdf"'
    response.write(pdf)
    return response
