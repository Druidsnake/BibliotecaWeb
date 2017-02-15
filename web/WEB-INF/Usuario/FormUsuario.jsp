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
                <%@include file="header.jsp" %>
            </header>
            <div class="slider container">
                <%@include file="slider.jsp" %>
            </div>
            <nav class="container navbar navbar-toggleable-md navbar-dark bg-primary">
                <%@include file="navbar.jsp" %>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <aside class="aside col-2">
                    <%@include file="aside2.jsp" %>
                </aside>
                <section class="col-10 main-content">
                    <h1>Nuevo Usuario</h1>

                    <form action="registrarUsuario" method="post">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                            <input class="mdl-textfield__input" name="mail" type="email" class="form-control">
                            <label class="mdl-textfield__label">Email address</label>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                            <input class="mdl-textfield__input" name="pass1" type="password" class="form-control">
                            <label class="mdl-textfield__label">Contraseña</label>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label d-block">
                            <input class="mdl-textfield__input" name="pass2" type="password" class="form-control">
                            <label class="mdl-textfield__label">Confirmar Contraseña</label>
                        </div>

                        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect" type="submit" class="btn btn-default">Registrar</button>
                    </form>
                </section>
            </div>


        </div>

        <footer class=".container-fluid page-footer blue center-on-small-only"><%@include file="footer.jsp" %></footer>
        <script src="public/Jquery/jquery-3.1.1.js" type="text/javascript"></script>
        <script src="public/MDB Free/js/tether.min.js" type="text/javascript"></script>
        <script src="public/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="public/mdl/material.min.js" type="text/javascript"></script>
        <script src="public/MDB Free/js/mdb.min.js" type="text/javascript"></script>
        <script src="public/materialize/js/materialize.min.js" type="text/javascript"></script>
        <script src="public/js/main.js" type="text/javascript"></script>
    </body>
</html>
