#Importamos los modulos necesarios
import os
from django.conf import settings
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from reportlab.lib.units import cm
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.platypus import Paragraph, Table, TableStyle
from reportlab.lib.enums import TA_JUSTIFY, TA_LEFT, TA_CENTER
from reportlab.lib import colors
from django.http import FileResponse, HttpResponse
from io import BytesIO
from datetime import datetime

def crearPdf_resumen(request,inventario,libros,issue,cd,resp):

    buffer=BytesIO()
    c = canvas.Canvas(buffer)
    # ----------------------- ENCABEZADO ---------------------
    # tamaño de la pagina
    w, h = A4
    c.setPageSize(A4)
    archivo_imagen = settings.MEDIA_ROOT+'/templates/inventario/img/logo.png'
    # Dibujamos una imagen (IMAGEN, X,Y, WIDTH, HEIGH)
    c.drawImage(archivo_imagen, 50, 780, 150, 50)
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
    c.drawString(220,710,"Resumen de Inventario")
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

    fecha_inicio=str(inventario.f_inicio)[0:10]
    fecha_termino=str(inventario.f_termino)[0:10]
    fecha_informe=str(inventario.f_informe)[0:10]
    c.setFont('Helvetica', 14)
    c.drawString(190,650,"Alan brito")
    c.drawString(190,630,"San Andres")
    c.drawString(190,610,fecha_inicio)
    c.drawString(190,590,fecha_termino)
    c.drawString(190,570,fecha_informe)

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
    hTOTAL = Paragraph('''<b>TOTAL</b>''', styleBH)
    # Texts

    # DATOS

    titulo1 ="Total de ítems Disponibles en el sistema"
    n1=str(1)
    libros1=str(libros.total_items)
    issue1=str(issue.total_items)
    cd1=str(cd.total_items)
    resp1=str(resp.total_items)
    total1=str(int(libros1)+int(issue1)+int(cd1)+int(resp1))
    # 1
    Conceptos1 = Paragraph(titulo1, styleN)
    N1 = Paragraph(n1, styleBH)
    ISSUE1 = Paragraph(libros1, styleBH)
    LIBROS1 = Paragraph(issue1, styleBH)
    CD1 = Paragraph(cd1, styleBH)
    RESP1 = Paragraph(resp1, styleBH)
    TOTAL1 = Paragraph(total1, styleBH)
    # DATOS

    titulo2 ="Total de ítems inventariados (Capturados en block de notas y pistola de mando) "
    n2=str(2)
    libros2=str(libros.total_items_inventariados)
    issue2=str(issue.total_items_inventariados)
    cd2=str(cd.total_items_inventariados)
    resp2=str(resp.total_items_inventariados)
    total2=str(int(libros2)+int(issue2)+int(cd2)+int(resp2))
    # 2
    Conceptos2 = Paragraph(titulo2, styleN)
    N2 = Paragraph(n2, styleBH)
    ISSUE2 = Paragraph(libros2, styleBH)
    LIBROS2 = Paragraph(issue2, styleBH)
    CD2 = Paragraph(cd2, styleBH)
    RESP2 = Paragraph(resp2, styleBH)
    TOTAL2 = Paragraph(total2, styleBH)

    # DATOS

    titulo3 ="Total de ítems en préstamo permanente"
    n3=str(3)
    libros3=str(libros.total_items_en_prestamos_permanente)
    issue3=str(issue.total_items_en_prestamos_permanente)
    cd3=str(cd.total_items_en_prestamos_permanente)
    resp3=str(resp.total_items_en_prestamos_permanente)
    total3=str(int(libros3)+int(issue3)+int(cd3)+int(resp3))
    # 3
    Conceptos3 = Paragraph(titulo3, styleN)
    N3 = Paragraph(n3, styleBH)
    ISSUE3 = Paragraph(libros3, styleBH)
    LIBROS3 = Paragraph(issue3, styleBH)
    CD3 = Paragraph(cd3, styleBH)
    RESP3 = Paragraph(resp3, styleBH)
    TOTAL3 = Paragraph(total3, styleBH)

    # DATOS

    titulo4 ="Total de ítems en moroso alumnos"
    n4=str(4)
    libros4=str(libros.total_items_en_morosos_alumnos)
    issue4=str(issue.total_items_en_morosos_alumnos)
    cd4=str(cd.total_items_en_morosos_alumnos)
    resp4=str(resp.total_items_en_morosos_alumnos)
    total4=str(int(libros4)+int(issue4)+int(cd4)+int(resp4))
    # 4
    Conceptos4 = Paragraph(titulo4, styleN)
    N4 = Paragraph(n4, styleBH)
    ISSUE4 = Paragraph(libros4, styleBH)
    LIBROS4 = Paragraph(issue4, styleBH)
    CD4 = Paragraph(cd4, styleBH)
    RESP4 = Paragraph(resp4, styleBH)
    TOTAL4 = Paragraph(total4, styleBH)
    # DATOS

    titulo5 ="Total de ítems morosos académico"
    n5=str(5)
    libros5=str(libros.total_items_morosos_academicos)
    issue5=str(issue.total_items_morosos_academicos)
    cd5=str(cd.total_items_morosos_academicos)
    resp5=str(resp.total_items_morosos_academicos)
    total5=str(int(libros5)+int(issue5)+int(cd5)+int(resp5))
    # 5
    Conceptos5 = Paragraph(titulo5, styleN)
    N5 = Paragraph(n5, styleBH)
    ISSUE5 = Paragraph(libros5, styleBH)
    LIBROS5 = Paragraph(issue5, styleBH)
    CD5 = Paragraph(cd5, styleBH)
    RESP5 = Paragraph(resp5, styleBH)
    TOTAL5 = Paragraph(total5, styleBH)
    # DATOS

    titulo6 =" 	Total ítems morosos funcionarios"
    n6=str(6)
    libros6=str(libros.total_items_morosos_funcionarios)
    issue6=str(issue.total_items_morosos_funcionarios)
    cd6=str(cd.total_items_morosos_funcionarios)
    resp6=str(resp.total_items_morosos_funcionarios)
    total6=str(int(libros6)+int(issue6)+int(cd6)+int(resp6))
    # 6
    Conceptos6 = Paragraph(titulo6, styleN)
    N6 = Paragraph(n6, styleBH)
    ISSUE6 = Paragraph(libros6, styleBH)
    LIBROS6 = Paragraph(issue6, styleBH)
    CD6 = Paragraph(cd6, styleBH)
    RESP6 = Paragraph(resp6, styleBH)
    TOTAL6 = Paragraph(total6, styleBH)
    # DATOS

    titulo7 ="Total ítem morosos postgrado"
    n7=str(7)
    libros7=str(libros.total_items_morosos_postgrado)
    issue7=str(issue.total_items_morosos_postgrado)
    cd7=str(cd.total_items_morosos_postgrado)
    resp7=str(resp.total_items_morosos_postgrado)
    total7=str(int(libros7)+int(issue7)+int(cd7)+int(resp7))
    # 7
    Conceptos7 = Paragraph(titulo7, styleN)
    N7 = Paragraph(n7, styleBH)
    ISSUE7 = Paragraph(libros7, styleBH)
    LIBROS7 = Paragraph(issue7, styleBH)
    CD7 = Paragraph(cd7, styleBH)
    RESP7 = Paragraph(resp7, styleBH)
    TOTAL7 = Paragraph(total7, styleBH)
    # DATOS

    titulo8 = "Total ítems morosos PIB"
    n8=str(8)
    libros8=str(libros.total_items_morosos_pib)
    issue8=str(issue.total_items_morosos_pib)
    cd8=str(cd.total_items_morosos_pib)
    resp8=str(resp.total_items_morosos_pib)
    total8=str(int(libros8)+int(issue8)+int(cd8)+int(resp8))
    # 8
    Conceptos8 = Paragraph(titulo8, styleN)
    N8 = Paragraph(n8, styleBH)
    ISSUE8 = Paragraph(libros8, styleBH)
    LIBROS8 = Paragraph(issue8, styleBH)
    CD8 = Paragraph(cd8, styleBH)
    RESP8 = Paragraph(resp8, styleBH)
    TOTAL8 = Paragraph(total8, styleBH)
    # DATOS

    titulo9 ="Total de ítems extraviados"
    n9=str(9)
    libros9=str(libros.total_items_extraviados)
    issue9=str(issue.total_items_extraviados)
    cd9=str(cd.total_items_extraviados)
    resp9=str(resp.total_items_extraviados)
    total9=str(int(libros9)+int(issue9)+int(cd9)+int(resp9))
    # 9
    Conceptos9 = Paragraph(titulo9, styleN)
    N9 = Paragraph(n9, styleBH)
    ISSUE9 = Paragraph(libros9, styleBH)
    LIBROS9 = Paragraph(issue9, styleBH)
    CD9 = Paragraph(cd9, styleBH)
    RESP9 = Paragraph(resp9, styleBH)
    TOTAL9 = Paragraph(total9, styleBH)
    # DATOS

    titulo10 ="Total ítems perdidos"
    n10=str(10)
    libros10=str(libros.total_items_perdidos)
    issue10=str(issue.total_items_extraviados)
    cd10=str(cd.total_items_extraviados)
    resp10=str(resp.total_items_extraviados)
    total10=str(int(libros10)+int(issue10)+int(cd10)+int(resp10))
    # 10
    Conceptos10 = Paragraph(titulo10, styleN)
    N10 = Paragraph(n10, styleBH)
    ISSUE10 = Paragraph(libros10, styleBH)
    LIBROS10 = Paragraph(issue3, styleBH)
    CD10 = Paragraph(cd10, styleBH)
    RESP10 = Paragraph(resp10, styleBH)
    TOTAL10 = Paragraph(total10, styleBH)
    # DATOS

    titulo11 ="Total ítems inutilizados (Quemado, manchado, mutilado)"
    n11=str(11)
    libros11=str(libros.total_items_inutilizados)
    issue11=str(issue.total_items_inutilizados)
    cd11=str(cd.total_items_inutilizados)
    resp11=str(resp.total_items_inutilizados)
    total11=str(int(libros11)+int(issue11)+int(cd11)+int(resp11))
    # 11
    Conceptos11 = Paragraph(titulo11, styleN)
    N11 = Paragraph(n11, styleBH)
    ISSUE11 = Paragraph(libros11, styleBH)
    LIBROS11 = Paragraph(issue11, styleBH)
    CD11 = Paragraph(cd11, styleBH)
    RESP11 = Paragraph(resp11, styleBH)
    TOTAL11 = Paragraph(total11, styleBH)
    # DATOS

    titulo12 ="Total de ítems deteriorados para empastar (puede ser recuperable)"
    n12=str(12)
    libros12=str(libros.total_items_deteriorados_para_empastar)
    issue12=str(issue.total_items_deteriorados_para_empastar)
    cd12=str(cd.total_items_deteriorados_para_empastar)
    resp12=str(resp.total_items_deteriorados_para_empastar)
    total12=str(int(libros12)+int(issue12)+int(cd12)+int(resp12))
    # 12
    Conceptos12 = Paragraph(titulo12, styleN)
    N12 = Paragraph(n12, styleBH)
    ISSUE12 = Paragraph(libros12, styleBH)
    LIBROS12 = Paragraph(issue12, styleBH)
    CD12 = Paragraph(cd12, styleBH)
    RESP12 = Paragraph(resp12, styleBH)
    TOTAL12 = Paragraph(total12, styleBH)
    # DATOS

    titulo13 ="Total ítems en transito"
    n13=str(13)
    libros13=str(libros.total_items_transito)
    issue13=str(issue.total_items_transito)
    cd13=str(cd.total_items_transito)
    resp13=str(resp.total_items_transito)
    total13=str(int(libros13)+int(issue13)+int(cd13)+int(resp13))
    # 13
    Conceptos13 = Paragraph(titulo13, styleN)
    N13 = Paragraph(n13, styleBH)
    ISSUE13 = Paragraph(libros13, styleBH)
    LIBROS13 = Paragraph(issue13, styleBH)
    CD13 = Paragraph(cd13, styleBH)
    RESP13 = Paragraph(resp13, styleBH)
    TOTAL13 = Paragraph(total13, styleBH)
    # DATOS

    titulo14 ="Total ítems con problemas en catalogación"
    n14=str(14)
    libros14=str(libros.total_items_problemas_de_catalogacion)
    issue14=str(issue.total_items_problemas_de_catalogacion)
    cd14=str(cd.total_items_problemas_de_catalogacion)
    resp14=str(resp.total_items_problemas_de_catalogacion)
    total14=str(int(libros14)+int(issue14)+int(cd14)+int(resp14))
    # 14
    Conceptos14 = Paragraph(titulo14, styleN)
    N14 = Paragraph(n14, styleBH)
    ISSUE14 = Paragraph(libros14, styleBH)
    LIBROS14 = Paragraph(issue14, styleBH)
    CD14 = Paragraph(cd14, styleBH)
    RESP14 = Paragraph(resp14, styleBH)
    TOTAL14 = Paragraph(total14, styleBH)
    # DATOS

    titulo15 ="Total de ítems faltantes"
    n15=str(15)
    libros15=str(libros.total_items_faltantes)
    issue15=str(issue.total_items_faltantes)
    cd15=str(cd.total_items_faltantes)
    resp15=str(resp.total_items_faltantes)
    total15=str(int(libros15)+int(issue15)+int(cd15)+int(resp15))
    # 15
    Conceptos15 = Paragraph(titulo15, styleN)
    N15 = Paragraph(n15, styleBH)
    ISSUE15 = Paragraph(libros15, styleBH)
    LIBROS15 = Paragraph(issue15, styleBH)
    CD15 = Paragraph(cd15, styleBH)
    RESP15 = Paragraph(resp15, styleBH)
    TOTAL15 = Paragraph(total15, styleBH)


    data= [[hN, hConceptos,hISSUE, hLIBROS, hCD, hRESP,hTOTAL],
           [N1, Conceptos1, ISSUE1, LIBROS1, CD1, RESP1, TOTAL1],
           [N2, Conceptos2, ISSUE2, LIBROS2, CD2, RESP2,TOTAL2],
           [N3, Conceptos3, ISSUE3, LIBROS3, CD3, RESP3,TOTAL3],
           [N4, Conceptos4, ISSUE4, LIBROS4, CD4, RESP4,TOTAL4],
           [N5, Conceptos5, ISSUE5, LIBROS5, CD5, RESP5,TOTAL5],
           [N6, Conceptos6, ISSUE6, LIBROS6, CD6, RESP6,TOTAL6],
           [N7, Conceptos7, ISSUE7, LIBROS7, CD7, RESP7,TOTAL7],
           [N8, Conceptos8, ISSUE8, LIBROS8, CD8, RESP8,TOTAL8],
           [N9, Conceptos9, ISSUE9, LIBROS9, CD9, RESP9,TOTAL9],
           [N10, Conceptos10, ISSUE10, LIBROS10, CD10, RESP10,TOTAL10],
           [N11, Conceptos11, ISSUE11, LIBROS11, CD11, RESP11,TOTAL11],
           [N12, Conceptos12, ISSUE12, LIBROS12, CD12, RESP12,TOTAL12],
           [N13, Conceptos13, ISSUE13, LIBROS13, CD13, RESP13,TOTAL13],
           [N14, Conceptos14, ISSUE14, LIBROS14, CD14, RESP14,TOTAL14],
           [N15, Conceptos15, ISSUE15, LIBROS15, CD15, RESP15,TOTAL15]]

    table = Table(data, colWidths=[1.0 * cm, 8.7 * cm, 1.5 * cm,
                                   1.9* cm, 1.4 * cm, 1.7 * cm])

    table.setStyle(TableStyle([
                           ('INNERGRID', (0,0), (-1,-1), 0.25, colors.black),
                           ('BOX', (0,0), (-1,-1), 0.25, colors.black),
                           ]))


    table.wrapOn(c, w, h)
    table.drawOn(c, *coord(1.5, 22.6, cm))
    # Guardar
    c.showPage()
    c.save()
    pdf=buffer.getvalue()
    buffer.close()
    return pdf
    #return FileResponse(buffer, as_attachment=True, filename='InventarioAnual.pdf')
#os.system("InventarioAnual.pdf")
