<%@page import="java.util.*" session="true" %>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<%@page import="tienda.modelo.bean.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="public/bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/mdl/material.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/MDB Free/css/mdb.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
        <link rel="shortcut icon" type="image/x-icon" href="imagen/ui/favicon.ico">

    </head>
    <body>
        <div class=".container-fluid">
            <header  class="navbar fixed-top navbar-toggleable-md navbar-dark bg-primary">
                <%@include file="../header2.jsp" %>
            </header>
            <div class="slider container">
                <%@include file="../slider.jsp" %>
            </div>
            <nav class="container navbar navbar-toggleable-md navbar-dark bg-primary">
                <%@include file="../navbar.jsp" %>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <aside class="aside2 col-2">
                    <%@include file="../aside2.jsp" %>
                </aside>
                <section class="col-10 main-content">
                    <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th class="mdl-data-table__cell--non-numeric">Titulo</th>
                                <th class="mdl-data-table__cell--non-numeric">Autor</th>
                                <th>IDreserva</th>
                                <th>Isbn</th>
                                <th>Fecha_desde</th>
                                <th>Fecha_hasta</th>
                            </tr>
                        </thead>

                        <%
                           ArrayList<Reserva> reservas = (ArrayList<Reserva>) request.getAttribute("listarRes");
                           Integer num=1;
                           for (Reserva x : reservas) {


                        %>
                        <tbody>
                            <tr>
                                <td><%=num%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getTitulo()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getAutor()%></td>
                                <td><%=x.getIdreserva()%></td>
                                <td><%=x.getIsbn()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getFecha_desde()%></td>
                                <td><%=x.getFecha_hasta()%></td>
                                <td><a href="Reservar?isbn=<%=x.getIsbn()%>&usuario=<%=usuario.getMail()%>">Eliminar</a></td>
                            </tr>
                        </tbody>

                        <tr>
                            <td><%=num%></td>
                            <td><%=x.getTitulo()%></td>
                            <td><%=x.getAutor()%></td>
                            <td><%=x.getIdreserva()%></td>
                            <td><%=x.getIsbn()%></td>
                            <td><%=x.getFecha_desde()%></td>
                            <td><%=x.getFecha_hasta()%></td>

                            <td><a href="eliminarReserva?idreserva=<%=x.getIdreserva()%>">Eliminar</a></td>




                        </tr>
                        <% num=num+1;%>
                        <%}%>
                </table>
                </section>
            </div>


        </div>

        <footer class=".container-fluid page-footer blue center-on-small-only"><%@include file="../footer.jsp" %></footer>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
        <script src="public/MDB Free/js/tether.min.js" type="text/javascript"></script>
        <script src="public/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="public/mdl/material.min.js" type="text/javascript"></script>
        <script src="public/MDB Free/js/mdb.min.js" type="text/javascript"></script>
        <script src="public/materialize/js/materialize.min.js" type="text/javascript"></script>
        <script src="public/js/main.js" type="text/javascript"></script>
    </body>
</html>
