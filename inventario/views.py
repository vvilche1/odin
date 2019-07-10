from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render, redirect
from django.urls import reverse
from django.views import generic
from django.views.generic import View
from django.shortcuts import render
from .forms import UploadFileForm
 
from django.shortcuts import render
from django.conf import settings
from django.core.files.storage import FileSystemStorage

from .pdf import *
from .pdf_resumen import *
from .models import Campus, Usuario, Inventario, Libros,Issue,Resp,Cd
from .forms import UsuarioForm, LibrosForm, IssueForm, CdForm, RespForm,InventarioForm

def index(request):
    inventarios = Inventario.objects.all()
    return render(request, 'inventario/index.html', {'inventarios': inventarios})

def update_inventario(request, idinventario):
    inventario = Inventario.objects.get(idinventario=idinventario)
    form = InventarioForm(request.POST or None, instance=inventario)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/inventario-form.html', {'form': form, 'inventario': inventario})

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
def generar_pdf_resumen(request,idinventario):
    inventario = Inventario.objects.get(idinventario=idinventario)
    libros = Libros.objects.get(idinventario_libros=idinventario)
    issue = Issue.objects.get(idinventario_issue=idinventario)
    cd = Cd.objects.get(idinventario_cd=idinventario)
    resp = Resp.objects.get(idinventario_resp=idinventario)
    pdf_resumen=crearPdf_resumen(request,inventario,libros,issue,cd,resp)
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition']='filename="InventarioAnual_resumen.pdf"'
    response.write(pdf_resumen)
    return response

def libro_edit(request, idinventario):
    libros = Libros.objects.get(idinventario_libros=idinventario)
    form = LibrosForm(request.POST or None, instance=libros)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/libros-edit.html', {'form': form, 'libros': libros})

def issue_edit(request,idinventario):
    issue = Issue.objects.get(idinventario_issue=idinventario)
    form = IssueForm(request.POST or None, instance=issue)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/issue-edit.html', {'form': form, 'issue': issue})

def resp_edit(request, idinventario):
    resp = Resp.objects.get(idinventario_resp=idinventario)
    form = RespForm(request.POST or None, instance=resp)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/resp-edit.html', {'form': form, 'resp': resp})

def cd_edit(request, idinventario):
    cd = Cd.objects.get(idinventario_cd=idinventario)
    form = CdForm(request.POST or None, instance=cd)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/cd-edit.html', {'form': form, 'cd': cd})

def inventario_edit(request, idinventario):
    inventario = Inventario.objects.get(idinventario=idinventario)
    form = InventarioForm(request.POST or None, instance=inventario)

    if form.is_valid():
        form.save()
        return redirect('index')

    return render(request, 'inventario/inventario-edit.html', {'form': form, 'inventario': inventario})


# funcion para cargar sxcel


# def upload_file(request):
#     if request.method == 'POST':
#         form = UploadFileForm(request.POST, request.FILES)
#         if form.is_valid():
#             handle_uploaded_file(request.FILES['file'])
#             return HttpResponseRedirect('/success/url/')
#     else:
#         form = UploadFileForm()
#     return render(request, 'upload.html', {'form': form})
def simple_upload(request):
    if request.method == 'POST' and request.FILES['myfile']:
        myfile = request.FILES['myfile']
        fs = FileSystemStorage()
        filename = fs.save(myfile.name, myfile)
        uploaded_file_url = fs.url(filename)
        return render(request, 'inventario/simple_upload.html', {
            'uploaded_file_url': uploaded_file_url
        })
    return render(request, 'inventario/simple_upload.html')