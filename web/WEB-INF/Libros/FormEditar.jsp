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
                    <h1>Editar Libro</h1>
                    <form action="actualizarLibro" method="post">

                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                                <input class="mdl-textfield__input" name="txtisbn" type="text" pattern="-?[0-9]*(\.[0-9]+)?" value="${libro.isbn}">
                                <label class="mdl-textfield__label">Isbn</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                                <input class="mdl-textfield__input" name="txttitulo" type="text" value="${libro.titulo}">
                                <label class="mdl-textfield__label">Titulo</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                                <input class="mdl-textfield__input" name="txtautor" type="text" value="${libro.autor}">
                                <label class="mdl-textfield__label">Autor</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                                <input class="mdl-textfield__input" name="txtgenero" type="text" value="${libro.genero}">
                                <label class="mdl-textfield__label">Genero</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                                <input class="mdl-textfield__input" name="txteditorial" type="text" value="${libro.editorial}">
                                <label class="mdl-textfield__label">Editorial</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield d-block">
                                <textarea class="mdl-textfield__input" type="text" rows= "3" id="sample5" name="txtsinopsis" value="${libro.sinopsis}"></textarea>
                                <label class="mdl-textfield__label">Sinopsis</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Actualizar</button>
                            </div>
                    </form>
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
