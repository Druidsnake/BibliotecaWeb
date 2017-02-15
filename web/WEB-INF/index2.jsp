<%--
    Document   : principal
    Created on : 11/01/2017, 06:03:31 PM
    Author     : Alumno
--%>

<%@page import="tienda.modelo.bean.Empleado"%>
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
                <%@include file="header2.jsp" %>
            </header>
            <nav class="col-md-12">
                <%@include file="navbar.jsp" %>
            </nav>


        </div>
        <div class="container">
            <aside class="col-md-2">
                <%@include file="aside2.jsp" %>
            </aside>
            <section class="main-content col-md-10">

            </section>
        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="footer.jsp" %></footer>
        </div>
    </body>
</html>
