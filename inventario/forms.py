from django import forms
from .models import Usuario, Libros, Issue, Resp, Cd, Inventario

class UsuarioForm(forms.ModelForm):

    class Meta:
        model = Usuario
        fields = ('id_cam','idusuario','nombre','rut','password')

class LibrosForm(forms.ModelForm):

    class Meta:
        model = Libros
        fields = ('total_items',
                'total_items_inventariados',
                'total_items_en_prestamos_permanente',
                'total_items_en_morosos_alumnos',
                'total_items_morosos_academicos',
                'total_items_morosos_funcionarios',
                'total_items_morosos_postgrado',
                'total_items_morosos_pib',
                'total_items_extraviados',
                'total_items_perdidos',
                'total_items_inutilizados',
                'total_items_deteriorados_para_empastar',
                'total_items_transito',
                'total_items_problemas_de_catalogacion',
                'total_items_faltantes')

class IssueForm(forms.ModelForm):

    class Meta:
        model = Issue
        fields = ('total_items',
                'total_items_inventariados',
                'total_items_en_prestamos_permanente',
                'total_items_en_morosos_alumnos',
                'total_items_morosos_academicos',
                'total_items_morosos_funcionarios',
                'total_items_morosos_postgrado',
                'total_items_morosos_pib',
                'total_items_extraviados',
                'total_items_perdidos',
                'total_items_inutilizados',
                'total_items_deteriorados_para_empastar',
                'total_items_transito',
                'total_items_problemas_de_catalogacion',
                'total_items_faltantes')

class RespForm(forms.ModelForm):

    class Meta:
        model = Resp
        fields = ('total_items',
                'total_items_inventariados',
                'total_items_en_prestamos_permanente',
                'total_items_en_morosos_alumnos',
                'total_items_morosos_academicos',
                'total_items_morosos_funcionarios',
                'total_items_morosos_postgrado',
                'total_items_morosos_pib',
                'total_items_extraviados',
                'total_items_perdidos',
                'total_items_inutilizados',
                'total_items_deteriorados_para_empastar',
                'total_items_transito',
                'total_items_problemas_de_catalogacion',
                'total_items_faltantes')

class CdForm(forms.ModelForm):

    class Meta:
        model = Cd
        fields = ('total_items',
                'total_items_inventariados',
                'total_items_en_prestamos_permanente',
                'total_items_en_morosos_alumnos',
                'total_items_morosos_academicos',
                'total_items_morosos_funcionarios',
                'total_items_morosos_postgrado',
                'total_items_morosos_pib',
                'total_items_extraviados',
                'total_items_perdidos',
                'total_items_inutilizados',
                'total_items_deteriorados_para_empastar',
                'total_items_transito',
                'total_items_problemas_de_catalogacion',
                'total_items_faltantes')

class InventarioForm(forms.ModelForm):

    class Meta:
        model = Inventario
        fields = ('idinventario_libros',
            'idinventario_issue',
            'idinventario_cd',
            'idinventario_resp',
            'nombre_inventario',
            'f_inicio',
            'f_termino',
            )
