<%--
    Document   : Libros
    Created on : 18/01/2017, 06:28:45 PM
    Author     : Libro
--%>
<%@page import="java.util.*" session="true" %>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Libro"%>
<%@page import="tienda.modelo.bean.Usuario"%>
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
                <%@include file="WEB-INF/header.jsp" %>
            </header>
            <div class="slider container">
                <%@include file="WEB-INF/slider.jsp" %>
            </div>
            <nav class="container navbar navbar-toggleable-md navbar-dark bg-primary">
                <%@include file="WEB-INF/navbar.jsp" %>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <aside class="aside2 col-2">
                    <%@include file="WEB-INF/aside.jsp" %>
                </aside>
                <section class="col-10 main-content">
                    <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
                        <thead>
                            <tr>
                                <th>ISBN</th>
                                <th class="mdl-data-table__cell--non-numeric">Titulo</th>
                                <th class="mdl-data-table__cell--non-numeric">Autor</th>
                                <th class="mdl-data-table__cell--non-numeric">Genero</th>
                                <th class="mdl-data-table__cell--non-numeric">Editorial</th>
                                <th class="mdl-data-table__cell--non-numeric">Reservar</th>
                            </tr>
                        </thead>

                        <%
                           ArrayList<Libro> libros = (ArrayList<Libro>) request.getAttribute("listarLib");

                           for (Libro x : libros) {%>
                        <tbody>
                            <tr>
                                <td><%=x.getIsbn()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getTitulo()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getAutor()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getGenero()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><%=x.getEditorial()%></td>
                                <td class="mdl-data-table__cell--non-numeric"><a href="Reservar?isbn=<%=x.getIsbn()%>&usuario=<%=usuario.getMail()%>">Reservar</a></td>
                            </tr>
                        </tbody>

                        <% }%>
                </table>
                </section>
            </div>


        </div>

        <footer class=".container-fluid page-footer blue center-on-small-only"><%@include file="WEB-INF/footer.jsp" %></footer>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
        <script src="public/MDB Free/js/tether.min.js" type="text/javascript"></script>
        <script src="public/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="public/mdl/material.min.js" type="text/javascript"></script>
        <script src="public/MDB Free/js/mdb.min.js" type="text/javascript"></script>
        <script src="public/materialize/js/materialize.min.js" type="text/javascript"></script>
        <script src="public/js/main.js" type="text/javascript"></script>
    </body>
</html>
