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
                <%@include file="../header.jsp" %>
            </header>
            <nav class="col-md-12">
                <%@include file="../navbar.jsp" %>
            </nav>


        </div>
        <div class="container">
            <aside class="col-md-2">
                <%@include file="../aside.jsp" %>
            </aside>
            <section class="main-content col-md-10">
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
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="../footer.jsp" %></footer>
        </div>
    </body>
</html>
