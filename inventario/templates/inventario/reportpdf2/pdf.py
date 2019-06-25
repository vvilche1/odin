#Importamos los modulos necesarios
import os
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from reportlab.lib.units import cm
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.platypus import Paragraph, Table, TableStyle
from reportlab.lib.enums import TA_JUSTIFY, TA_LEFT, TA_CENTER
from reportlab.lib import colors
from io import BytesIO

buffer=BytesIO()
c = canvas.Canvas("InventarioAnual.pdf")
# ----------------------- ENCABEZADO ---------------------
# tamaño de la pagina
w, h = A4
c.setPageSize(A4)
# Dibujamos una imagen (IMAGEN, X,Y, WIDTH, HEIGH)
c.drawImage('logo.png', 50, 780, 150, 50)
# dibujamos una linea (X,Y, WIDTH, HEIGH)
x = 50
y = h - 100
c.line(x, y, x + 500, y)
# dibujamos otra linea (X,Y, WIDTH, HEIGH)
x1 = 50
y2 =h - 150
c.line(x1, y2, x + 500, y2)
# Para titulos asignamos una fuente y el tamaño = 20
c.setFont('Helvetica', 20)
# Dibujamos texto: (X,Y,Texto)
c.drawString(220,710,"Inventario Anual")
# Para parrafos normales cambiamos el tamaño a 12
c.setFont('Helvetica', 12)
# ------------------------ FIN ENCABEZADO ------------------

# Dibujamos texto: (X,Y,Texto)
c.drawString(50,650,"Nombre del responsable:")
c.drawString(50,630,"Biblioteca:")
c.drawString(50,610,"Fecha de inicio:")
c.drawString(50,590,"Fecha de termino:")
c.drawString(50,570,"Fecha de informe:")

# ----------------- datos ------------------
c.setFont('Helvetica', 16)

c.drawString(190,650,"Alan brito")
c.drawString(190,630,"San Andres")
c.drawString(190,610,"01/01/2019")
c.drawString(190,590,"03/01/2019")
c.drawString(190,570,"05/01/2019")

#----------------- tabla ------------------------
styles = getSampleStyleSheet()
styleN = styles["BodyText"]
styleN.alignment = TA_LEFT
styleBH = styles["Normal"]
styleBH.alignment = TA_CENTER

def coord(x, y, unit=1):
    x, y = x * unit, h -  y * unit
    return x, y

# Headers
hConceptos = Paragraph('''<b>Conceptos</b>''', styleN)
hN = Paragraph('''<b>#</b>''', styleBH)
hISSUE = Paragraph('''<b>ISSUE</b>''', styleBH)
hLIBROS = Paragraph('''<b>LIBROS</b>''', styleBH)
hCD = Paragraph('''<b>CD</b>''', styleBH)
hRESP = Paragraph('''<b>RESP</b>''', styleBH)
# Texts

# DATOS

titulo1 ="Total de ítems Disponibles en el sistema"
n1=str(1)
libros1=str(120)
issue1=str(300)
cd1=str(170)
resp1=str(270)
# 1
Conceptos1 = Paragraph(titulo1, styleN)
N1 = Paragraph(n1, styleBH)
ISSUE1 = Paragraph(libros1, styleBH)
LIBROS1 = Paragraph(issue1, styleBH)
CD1 = Paragraph(cd1, styleBH)
RESP1 = Paragraph(resp1, styleBH)
# DATOS

titulo2 ="Total de ítems inventariados (Capturados en block de notas y pistola de mando) "
n2=str(2)
libros2=str(120)
issue2=str(300)
cd2=str(170)
resp2=str(270)
# 2
Conceptos2 = Paragraph(titulo2, styleN)
N2 = Paragraph(n2, styleBH)
ISSUE2 = Paragraph(libros2, styleBH)
LIBROS2 = Paragraph(issue2, styleBH)
CD2 = Paragraph(cd2, styleBH)
RESP2 = Paragraph(resp2, styleBH)

# DATOS

titulo3 ="Total de ítems en préstamo permanente"
n3=str(3)
libros3=str(120)
issue3=str(300)
cd3=str(170)
resp3=str(270)
# 3
Conceptos3 = Paragraph(titulo3, styleN)
N3 = Paragraph(n3, styleBH)
ISSUE3 = Paragraph(libros3, styleBH)
LIBROS3 = Paragraph(issue3, styleBH)
CD3 = Paragraph(cd3, styleBH)
RESP3 = Paragraph(resp3, styleBH)

# DATOS

titulo4 ="Total de ítems en moroso alumnos"
n4=str(4)
libros4=str(120)
issue4=str(300)
cd4=str(170)
resp4=str(270)
# 4
Conceptos4 = Paragraph(titulo4, styleN)
N4 = Paragraph(n4, styleBH)
ISSUE4 = Paragraph(libros4, styleBH)
LIBROS4 = Paragraph(issue4, styleBH)
CD4 = Paragraph(cd4, styleBH)
RESP4 = Paragraph(resp4, styleBH)
# DATOS

titulo5 ="Total de ítems morosos académico"
n5=str(5)
libros5=str(120)
issue5=str(300)
cd5=str(170)
resp5=str(270)
# 5
Conceptos5 = Paragraph(titulo5, styleN)
N5 = Paragraph(n5, styleBH)
ISSUE5 = Paragraph(libros5, styleBH)
LIBROS5 = Paragraph(issue5, styleBH)
CD5 = Paragraph(cd5, styleBH)
RESP5 = Paragraph(resp5, styleBH)
# DATOS

titulo6 =" 	Total ítems morosos funcionarios"
n6=str(6)
libros6=str(120)
issue6=str(300)
cd6=str(170)
resp6=str(270)
# 6
Conceptos6 = Paragraph(titulo6, styleN)
N6 = Paragraph(n6, styleBH)
ISSUE6 = Paragraph(libros6, styleBH)
LIBROS6 = Paragraph(issue6, styleBH)
CD6 = Paragraph(cd6, styleBH)
RESP6 = Paragraph(resp6, styleBH)
# DATOS

titulo7 ="Total ítem morosos postgrado"
n7=str(7)
libros7=str(120)
issue7=str(300)
cd7=str(170)
resp7=str(270)
# 7
Conceptos7 = Paragraph(titulo7, styleN)
N7 = Paragraph(n7, styleBH)
ISSUE7 = Paragraph(libros7, styleBH)
LIBROS7 = Paragraph(issue7, styleBH)
CD7 = Paragraph(cd7, styleBH)
RESP7 = Paragraph(resp7, styleBH)
# DATOS

titulo8 = "Total ítems morosos PIB"
n8=str(8)
libros8=str(120)
issue8=str(300)
cd8=str(170)
resp8=str(270)
# 8
Conceptos8 = Paragraph(titulo8, styleN)
N8 = Paragraph(n8, styleBH)
ISSUE8 = Paragraph(libros8, styleBH)
LIBROS8 = Paragraph(issue8, styleBH)
CD8 = Paragraph(cd8, styleBH)
RESP8 = Paragraph(resp8, styleBH)
# DATOS

titulo9 ="Total de ítems extraviados"
n9=str(9)
libros9=str(120)
issue9=str(300)
cd9=str(170)
resp9=str(270)
# 9
Conceptos9 = Paragraph(titulo9, styleN)
N9 = Paragraph(n9, styleBH)
ISSUE9 = Paragraph(libros9, styleBH)
LIBROS9 = Paragraph(issue9, styleBH)
CD9 = Paragraph(cd9, styleBH)
RESP9 = Paragraph(resp9, styleBH)
# DATOS

titulo10 ="Total ítems perdidos"
n10=str(10)
libros10=str(120)
issue10=str(300)
cd10=str(170)
resp10=str(270)
# 10
Conceptos10 = Paragraph(titulo10, styleN)
N10 = Paragraph(n10, styleBH)
ISSUE10 = Paragraph(libros10, styleBH)
LIBROS10 = Paragraph(issue3, styleBH)
CD10 = Paragraph(cd10, styleBH)
RESP10 = Paragraph(resp10, styleBH)
# DATOS

titulo11 ="Total ítems inutilizados (Quemado, manchado, mutilado)"
n11=str(11)
libros11=str(120)
issue11=str(300)
cd11=str(170)
resp11=str(270)
# 11
Conceptos11 = Paragraph(titulo11, styleN)
N11 = Paragraph(n11, styleBH)
ISSUE11 = Paragraph(libros11, styleBH)
LIBROS11 = Paragraph(issue11, styleBH)
CD11 = Paragraph(cd11, styleBH)
RESP11 = Paragraph(resp11, styleBH)
# DATOS

titulo12 ="Total de ítems deteriorados para empastar (puede ser recuperable)"
n12=str(12)
libros12=str(120)
issue12=str(300)
cd12=str(170)
resp12=str(270)
# 12
Conceptos12 = Paragraph(titulo12, styleN)
N12 = Paragraph(n12, styleBH)
ISSUE12 = Paragraph(libros12, styleBH)
LIBROS12 = Paragraph(issue12, styleBH)
CD12 = Paragraph(cd12, styleBH)
RESP12 = Paragraph(resp12, styleBH)
# DATOS

titulo13 ="Total ítems en transito"
n13=str(13)
libros13=str(120)
issue13=str(300)
cd13=str(170)
resp13=str(270)
# 13
Conceptos13 = Paragraph(titulo13, styleN)
N13 = Paragraph(n13, styleBH)
ISSUE13 = Paragraph(libros13, styleBH)
LIBROS13 = Paragraph(issue13, styleBH)
CD13 = Paragraph(cd13, styleBH)
RESP13 = Paragraph(resp13, styleBH)
# DATOS

titulo14 ="Total ítems con problemas en catalogación"
n14=str(14)
libros14=str(120)
issue14=str(300)
cd14=str(170)
resp14=str(270)
# 14
Conceptos14 = Paragraph(titulo14, styleN)
N14 = Paragraph(n14, styleBH)
ISSUE14 = Paragraph(libros14, styleBH)
LIBROS14 = Paragraph(issue14, styleBH)
CD14 = Paragraph(cd14, styleBH)
RESP14 = Paragraph(resp14, styleBH)
# DATOS

titulo15 ="Total de ítems faltantes"
n15=str(15)
libros15=str(120)
issue15=str(300)
cd15=str(170)
resp15=str(270)
# 15
Conceptos15 = Paragraph(titulo15, styleN)
N15 = Paragraph(n15, styleBH)
ISSUE15 = Paragraph(libros15, styleBH)
LIBROS15 = Paragraph(issue15, styleBH)
CD15 = Paragraph(cd15, styleBH)
RESP15 = Paragraph(resp15, styleBH)



data= [[hN, hConceptos,hISSUE, hLIBROS, hCD, hRESP],
       [N1, Conceptos1, ISSUE1, LIBROS1, CD1, RESP1],
       [N2, Conceptos2, ISSUE2, LIBROS2, CD2, RESP2],
       [N3, Conceptos3, ISSUE3, LIBROS3, CD3, RESP3],
       [N4, Conceptos4, ISSUE4, LIBROS4, CD4, RESP4],
       [N5, Conceptos5, ISSUE5, LIBROS5, CD5, RESP5],
       [N6, Conceptos6, ISSUE6, LIBROS6, CD6, RESP6],
       [N7, Conceptos7, ISSUE7, LIBROS7, CD7, RESP7],
       [N8, Conceptos8, ISSUE8, LIBROS8, CD8, RESP8],
       [N9, Conceptos9, ISSUE9, LIBROS9, CD9, RESP9],
       [N10, Conceptos10, ISSUE10, LIBROS10, CD10, RESP10],
       [N11, Conceptos11, ISSUE11, LIBROS11, CD11, RESP11],
       [N12, Conceptos12, ISSUE12, LIBROS12, CD12, RESP12],
       [N13, Conceptos13, ISSUE13, LIBROS13, CD13, RESP13],
       [N14, Conceptos14, ISSUE14, LIBROS14, CD14, RESP14],
       [N15, Conceptos15, ISSUE15, LIBROS15, CD15, RESP15]]

table = Table(data, colWidths=[1.05 * cm, 9.7 * cm, 1.5 * cm,
                               2.5* cm, 1.5 * cm,1.5 * cm])

table.setStyle(TableStyle([
                       ('INNERGRID', (0,0), (-1,-1), 0.25, colors.black),
                       ('BOX', (0,0), (-1,-1), 0.25, colors.black),
                       ]))


table.wrapOn(c, w, h)
table.drawOn(c, *coord(1.5, 22.6, cm))
# Guardar
c.save()
pdf=buffer.getvalue()
buffer.close()
os.system("InventarioAnual.pdf")
