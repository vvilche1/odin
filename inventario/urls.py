from django.urls import path
from .views import list_usuario, create_usuario, update_usuario, delete_usuario, generar_pdf, create_libros, create_cd, create_resp, create_inventario, create_issue

urlpatterns = [
    path('', list_usuario, name='list_usuario'),
    path('create', create_usuario, name='create_usuario'),
    path('update/<int:idusuario>/', update_usuario, name='update_usuario'),
    path('delete/<int:idusuario>/', delete_usuario, name='delete_usuario'),
    path('Libros',create_libros, name='create_libros'),
    path('Issue',create_issue, name='create_issue'),
    path('Resp',create_resp, name='create_resp'),
    path('Cd',create_cd, name='create_cd'),
    path('Inventario',create_inventario, name='create_inventario'),
    path('pdf',generar_pdf, name='generar_pdf'),

]
# CRUD - CREATE, READ, UPDATE, DELETE
