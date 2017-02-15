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
        <link href="public/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="public/mdl/material.css" rel="stylesheet" type="text/css"/>
        <script src="public/mdl/material.js" type="text/javascript"></script>
        <link href="public/materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <script src="public/materialize/js/materialize.min.js" type="text/javascript"></script>
        <link href="public/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
    </head>
    <body>
        <div class=".container-fluid">
            <header class="col-md-12">
                <%@include file="../header2.jsp" %>
            </header>
            <nav class="col-md-12">
                <%@include file="../navbar.jsp" %>
            </nav>


        </div>
        <div class="container">
            <aside class="col-md-2">
                <%@include file="../aside2.jsp" %>
            </aside>
            <section class="main-content col-md-10">
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
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="../footer.jsp" %></footer>
        </div>
    </body>
</html>
