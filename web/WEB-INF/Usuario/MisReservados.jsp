<%--
    Document   : Libros
    Created on : 18/01/2017, 06:28:45 PM
    Author     : Libro
--%>
<%@page import="java.util.*" session="true" %>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Reserva"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="public/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
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
                        <td>#</td>
                        <td>Titulo</td>
                        <td>Autor</td>
                        <td>IDreserva</td>
                        <td>Isbn</td>
                        <td>Fecha_desde</td>
                        <td>Fecha_hasta</td>


                    </tr>
                    <%
                       ArrayList<Reserva> reservas = (ArrayList<Reserva>) request.getAttribute("listarRes");
                       Integer num=1;
                       for (Reserva x : reservas) {


                    %>

                    <tr>
                        <td><%=num%></td>
                        <td><%=x.getTitulo()%></td>
                        <td><%=x.getAutor()%></td>
                        <td><%=x.getIdreserva()%></td>
                        <td><%=x.getIsbn()%></td>
                        <td><%=x.getFecha_desde()%></td>
                        <td><%=x.getFecha_hasta()%></td>

                        <td><a href="eliminarReserva?idreserva=<%=x.getIdreserva()%>&usuario=<%=usuario.getMail()%>">Eliminar</a></td>




                    </tr>
                    <% num=num+1;%>
                    <%}%>
            </table>
            </section>
        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="../footer.jsp" %></footer>
        </div>
    </body>
</html>
