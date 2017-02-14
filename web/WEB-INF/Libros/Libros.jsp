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
        <link href="public/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>



        <link href="public/mdl/material.css" rel="stylesheet" type="text/css"/>
        <script src="public/mdl/material.js" type="text/javascript"></script>


        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
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
                <h1>Libros</h1>
        <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp mdl-js-data-table">
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th class="mdl-data-table__cell--non-numeric">TITULO</th>
                    <th class="mdl-data-table__cell--non-numeric">AUTOR</th>
                    <th class="mdl-data-table__cell--non-numeric">GENERO</th>
                    <th class="mdl-data-table__cell--non-numeric">EDITORIAL</th>
                    <th class="mdl-data-table__cell--non-numeric"> <a href="nuevoLibro">Nuevo</a></th>
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
                    <td class="mdl-data-table__cell--non-numeric"><a href="editarLibro?isbn=<%=x.getIsbn()%>">Editar</a></td>
                    <td class="mdl-data-table__cell--non-numeric"><a href="eliminarLibro?isbn=<%=x.getIsbn()%>" onclick="return confirmar();" >Eliminar</a></td>

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
