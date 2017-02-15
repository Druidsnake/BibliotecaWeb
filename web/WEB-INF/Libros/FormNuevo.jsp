<%@page import="java.util.*" session="true" %>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Empleado"%>
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
                <h1>Nuevo Libro</h1>
        <form action="grabarLibro" method="post">
            <table>
                <tr>
                    <td>Isbn</td>
                    <td><input name="txtisbn" type="text" ></td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input name="txttitulo" type="text" ></td>
                </tr>
                 <tr>
                    <td>Autor</td>
                    <td><input name="txtautor" type="text" ></td>
                </tr>
                 <tr>
                    <td>Genero</td>
                    <td><input name="txtgenero" type="text" ></td>
                </tr>
                 <tr>
                    <td>Editorial</td>
                    <td><input name="txteditorial" type="text" ></td>
                </tr>
                <tr>
                    <td>Sinopsis</td>
                    <td><input name="txtsinopsis" type="text"></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input value="Grabar" type="submit"></td>
                </tr>
            </table>
        </form>
            </section>
        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="../footer.jsp" %></footer>
        </div>
    </body>
</html>