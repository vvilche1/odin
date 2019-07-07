from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render, redirect
from django.urls import reverse
from django.views import generic
from django.views.generic import View

from .pdf import *
from .models import Campus, Usuario, Inventario, Libros,Issue,Resp,Cd
from .forms import UsuarioForm, LibrosForm, IssueForm, CdForm, RespForm,InventarioForm

def index(request):
    inventarios = Inventario.objects.all()
    return render(request, 'inventario/index.html', {'inventarios': inventarios})

def create(request):
    form = UsuarioForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/usuario-form.html', {'form': form})


def update_inventario(request, idinventario):
    inventario = Inventario.objects.get(idinventario=idinventario)
    form = InventarioForm(request.POST or None, instance=inventario)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/inventario-form.html', {'form': form, 'inventario': inventario})


def delete_usuario(request, idusuario):
    usuarios = Usuario.objects.get(idusuario=idusuario)

    if request.method == 'POST':
        usuarios.delete()
        return redirect('index')

    return render(request, 'inventario/usuario-delete-confirm.html', {'usuarios': usuarios})

def create_libros(request):
    form = LibrosForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('create_issue')

    return render(request, 'inventario/libros-form.html', {'form': form})

def create_issue(request):
    form = IssueForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('create_resp')

    return render(request, 'inventario/issue-form.html', {'form': form})

def create_resp(request):
    form = RespForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('create_cd')

    return render(request, 'inventario/resp-form.html', {'form': form})

def create_cd(request):
    form = CdForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('create_inventario')

    return render(request, 'inventario/cd-form.html', {'form': form})

def create_inventario(request):
    form = InventarioForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/inventario-form.html', {'form': form})


def generar_pdf(request,idinventario):
    inventario = Inventario.objects.get(idinventario=idinventario)
    libros = Libros.objects.get(idinventario_libros=idinventario)
    issue = Issue.objects.get(idinventario_issue=idinventario)
    cd = Cd.objects.get(idinventario_cd=idinventario)
    resp = Resp.objects.get(idinventario_resp=idinventario)
    pdf=crearPdf(request,inventario,libros,issue,cd,resp)
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition']='filename="InventarioAnual.pdf"'
    response.write(pdf)
    return response
