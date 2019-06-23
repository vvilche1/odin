from django.urls import path
from .views import list_usuario, create_usuario, update_usuario, delete_usuario

urlpatterns = [
    path('', list_usuario, name='list_usuario'),
    path('create', create_usuario, name='create_usuario'),
    path('update/<int:idusuario>/', update_usuario, name='update_usuario'),
    path('delete/<int:idusuario>/', delete_usuario, name='delete_usuario'),
]
# CRUD - CREATE, READ, UPDATE, DELETE
