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
        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
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
                <table>
                    <tr>
                        <td>ISBN</td>
                        <td>Titulo</td>
                        <td>Autor</td>
                        <td>Genero</td>
                        <td>Editorial</td>
                        <td>Sinopsis</td>
                        <td>Reservar</td>
                    </tr>
                    <%
                       ArrayList<Libro> libros = (ArrayList<Libro>) request.getAttribute("listarLib");

                       for (Libro x : libros) {%>

                    <tr>
                        <td><%=x.getIsbn()%></td>
                        <td><%=x.getTitulo()%></td>
                        <td><%=x.getAutor()%></td>
                        <td><%=x.getGenero()%></td>
                        <td><%=x.getEditorial()%></td>
                        <td><%=x.getSinopsis()%></td>
                        <td><a href="Reservar?isbn=<%=x.getIsbn()%>&usuario=<%=usuario.getMail()%>">Reservar</a></td>




                    </tr>
                    <% }%>
            </table>
            </section>
        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="../footer.jsp" %></footer>
        </div>
    </body>
</html>
