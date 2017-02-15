<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <%
            Usuario usuario = (Usuario) request.getSession().getAttribute("u");
            Integer nivel=1;
            if (usuario.getNivel()==2) {
               nivel=2;
            }
        %>
    <body>
        <div class="container">


            <div class="collapse navbar-collapse" id="navbarNav1">
                <div class="logo col-md-2">
                    <a href="index.jsp"><img src="<%=request.getContextPath()%>/imagen/ui/logo.png" width="70%"></a>
                </div>

                <div class="buscador col-md-4">
                    <form class="form-buscador" action="obtenerLibros" method="post">
                        <input type="text" name="input_libro" value="" placeholder="Busca un libro">
                    </form>
                </div>
                <div class="col-md-6">
                    <ul class="float-right navbar-nav ml-auto nav-flex-icons">
                                <li class="nav-item float-right">
                                    <a class="nav-link waves-effect waves-light">1 <i class="fa fa-envelope"></i></a>
                                </li>
                                <li class="nav-item avatar dropdown">
                                    <a class="nav-link waves-effect waves-light" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="http://mdbootstrap.com/img/Photos/Avatars/avatar-2.jpg" class="img-fluid rounded-circle z-depth-0 hoverZoomLink"></a>
                                    <div class="dropdown-menu dropdown-warning dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item waves-effect waves-light" href="#"><%=usuario.getNom1()%></a>
                                        <a id="admin"class="hidden dropdown-item waves-effect waves-light" href="ServletAdmi">Administrar</a>
                                        <a class="dropdown-item waves-effect waves-light" href="#">Mi Perfil</a>
                                        <a class="dropdown-item waves-effect waves-light" href="CerrarSesion">Cerrar Sesion</a>
                                    </div>
                                </li>
                            </ul>
                    <ul class="main-opt float-right navbar-nav">
                        <li class="nav-item active">
                            <a href="Login" class="nav-link">Ingresar<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a href="Registrar" class="nav-link">Registrar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link">Administrar</a>
                        </li>
                    </ul>

                </div>

            </div>

        </div>
        <script>
            $(document).ready(function() {
                if (<%=nivel%>===2) {
                    $("#admin").removeClass("hidden");
                }
            });
        </script>
    </body>
</html>
