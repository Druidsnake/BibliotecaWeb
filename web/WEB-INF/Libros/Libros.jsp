<%@page import="java.util.*" session="true" %>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<%@page import="tienda.modelo.bean.Libro"%>
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
                    <h1>Libros</h1>
            <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp mdl-js-data-table">
                <thead>
                    <tr>
                        <th>ISBN</th>
                        <th class="mdl-data-table__cell--non-numeric">TITULO</th>
                        <th class="mdl-data-table__cell--non-numeric">AUTOR</th>
                        <th class="mdl-data-table__cell--non-numeric">GENERO</th>
                        <th class="mdl-data-table__cell--non-numeric">EDITORIAL</th>
                        <th class="mdl-data-table__cell--non-numeric"> <!-- esta opc solo para adm<a href="nuevoLibro">Nuevo</a>--></th>
                        <th></th>
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
                        <!-- esta opc solo para adm<td class="mdl-data-table__cell--non-numeric"><a href="editarLibro?isbn=<%//=x.getIsbn()%>">Editar</a></td>-->
                        <!-- esta opc solo para adm<td class="mdl-data-table__cell--non-numeric"><a href="eliminarLibro?isbn=<%//=x.getIsbn()%>" onclick="return confirmar();" >Eliminar</a></td>-->

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
