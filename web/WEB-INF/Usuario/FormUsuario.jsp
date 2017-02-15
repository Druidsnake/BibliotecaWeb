<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="public/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
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
                    <div class="form-group">
                        <label>Email address</label>
                        <input name="mail" type="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input name="pass1" type="password" class="form-control" placeholder="Password">
                        <label>Confirmar Password</label>
                        <input name="pass2" type="password" class="form-control" placeholder="Confirmar Password">
                    </div>

                    <button type="submit" class="btn btn-default">Registrar</button>
                </form>

            </section>
        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="../footer.jsp" %></footer>
        </div>
    </body>
</html>
