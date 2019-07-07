from django.urls import path
from .views import index, create, update_inventario, delete_usuario, generar_pdf, create_libros, create_cd, create_resp, create_inventario, create_issue,libro_edit, issue_edit, resp_edit, cd_edit, inventario_edit

urlpatterns = [
    path('', index, name='index'),
    path('create', create, name='create'),
    path('update/<int:idinventario>/', update_inventario, name='update_inventario'),
    path('delete/<int:idusuario>/', delete_usuario, name='delete_usuario'),
    path('Libros',create_libros, name='create_libros'),
    path('Issue',create_issue, name='create_issue'),
    path('Resp',create_resp, name='create_resp'),
    path('Cd',create_cd, name='create_cd'),
    path('Inventario',create_inventario, name='create_inventario'),
    path('Libro-edit/<int:idinventario>/', libro_edit, name='libro_edit'),
    path('Issue-edit/<int:idinventario>/', issue_edit, name='issue_edit'),
    path('Resp-edit/<int:idinventario>/', resp_edit, name='resp_edit'),
    path('Cd-edit/<int:idinventario>/', cd_edit, name='cd_edit'),
    path('Inventario-edit/<int:idinventario>/', inventario_edit, name='inventario_edit'),
    path('pdf/<int:idinventario>/',generar_pdf, name='generar_pdf'),

]
# CRUD - CREATE, READ, UPDATE, DELETE
