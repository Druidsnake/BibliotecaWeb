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
                <div class="login">
                    <%
                    //valor de la variabl msg cuando el usuario es incorrecto
                        String msg=(String)request.getAttribute("msg");
                    %>
                    <div class="">
                        <form class="form-horizontal" action="ServletUsuario" method="post">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" name="txtusuario" class="form-control" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" name="txtclave" class="form-control" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default">Sign in</button>
                                </div>
                            </div>
                            <span><%=msg!=null?msg:""%> </span>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="footer.jsp" %></footer>
        </div>
    </body>
</html>
