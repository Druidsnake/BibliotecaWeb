<%--
    Document   : header2
    Created on : 12/02/2017, 10:23:02 AM
    Author     : ricar
--%>

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
            <a class="logo col-md-2" href="index.jsp">Logo</a>
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
                <li><a href="#"></a>face</li>
                <li><a href="#"></a>google</li>
                <li><a href="#"></a>you</li>
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
