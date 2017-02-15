<%-- 
    Document   : Reservas_adm
    Created on : 15/02/2017, 02:15:25 AM
    Author     : Peter
--%>

<%@page import="tienda.modelo.bean.Reserva"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="public/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="public/mdl/material.css" rel="stylesheet" type="text/css"/>
        <script src="public/mdl/material.js" type="text/javascript"></script>
        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
        <script>
            if (history.forward(1)) {
                location.replace(history.forward(1))
            }

        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class=".container-fluid">
            <header class="col-md-12">
                <%@include file="../header3.jsp" %>
            </header>
            <%
            if (usuario.getNivel()!=2) {
 
                //verifica que el usuario es administrador
                    request.getRequestDispatcher("../index2.jsp").forward(request, response);
                }
            %>
            <script>
                
            </script>
            <nav class="col-md-12">
                <%@include file="../navbar.jsp" %>
            </nav>

        </div>
        <div class="container">
            <aside class="col-md-2">
                <%@include file="../aside3.jsp" %>
            </aside>
    <section class="main-content col-md-10"> 
        
        <h1>Reservas</h1>
    <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp mdl-js-data-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th class="mdl-data-table__cell--non-numeric">USUARIO</th>
                    <th class="mdl-data-table__cell--non-numeric">ISBN</th>
                    <th class="mdl-data-table__cell--non-numeric">FECHA INICIAL</th>
                    <th class="mdl-data-table__cell--non-numeric">FECHA FINAL</th>                    
                    <th></th>
                </tr>
            </thead>
            <%
               ArrayList<Reserva> Reservas = (ArrayList<Reserva>) request.getAttribute("listarReservas");
               for (Reserva x : Reservas) {%>

            <tbody>
                <tr>
                    <td><%=x.getIsbn()%></td>
                    <td class="mdl-data-table__cell--non-numeric"><%=x.getIdreserva()%></td>
                    <td class="mdl-data-table__cell--non-numeric"><%=x.getUsuario()%></td>
                    <td class="mdl-data-table__cell--non-numeric"><%=x.getIsbn()%></td>
                    <td class="mdl-data-table__cell--non-numeric"><%=x.getFecha_desde()%></td>
                    <td class="mdl-data-table__cell--non-numeric"><%=x.getFecha_hasta()%></td>
                    <td class="mdl-data-table__cell--non-numeric"><a href="eliminarReserva_admi?idreserva=<%=x.getIdreserva()%>" onclick="return confirmar();" >Eliminar</a></td>

                </tr>
            </tbody>
            <% }%>
        </table>
        
            </section>
</html>
