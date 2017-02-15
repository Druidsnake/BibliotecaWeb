<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<!DOCTYPE html>
<html>
        <%
        Usuario usuario = (Usuario) request.getSession().getAttribute("u");
        Integer nivel=1;
        if (usuario.getNivel()==2) {
               nivel=2;
            }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>

        <div class="container">
            <a class="logo col-md-2" href="index.jsp"><img src="<%=request.getContextPath()%>/imagen/ui/logo.png" width="150"></a>
            <div class="buscador col-md-4">
                <form class="" action="obtenerLibros" method="post">
                    <input type="text" name="input_libro" value="" placeholder="Busca un libro">
                    <button type="submit" name="Buscar"></button>
                </form>
            </div>

            <ul class="botones col-md-4">
                <li><a href="#"><%=usuario.getNom1()%></a></li>
                <li><a href="CerrarSesion">Cerrar Sesion</a></li>
                <li id="admin" class="hidden"><a href="listarLibros">Administrar</a></li>
            </ul>
            <ul class="sociales col-md-2">
                <li><a href="#"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-square" aria-hidden="true"></i></a></li>
            </ul>
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
