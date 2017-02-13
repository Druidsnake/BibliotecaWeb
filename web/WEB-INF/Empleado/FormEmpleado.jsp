<%-- 
    Document   : FormEmpleado
    Created on : 18/01/2017, 06:29:55 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo Empleado</h1>
        <form action="grabarEmpleado" method="post">
            <table>
                <tr>
                    <td><input name="txtcodigo" type="hidden" value="${empleado.idempleado}">Nombre</td>
                    <td><input name="txtnom" type="text" value="${empleado.nombre}"></td>
                </tr>
                 <tr>
                    <td>Apellido Paterno</td>
                    <td><input name="txtpaterno" type="text" value="${empleado.paterno}"></td>
                </tr>
                 <tr>
                    <td>Apellido Materno</td>
                    <td><input name="txtmaterno" type="text" value="${empleado.materno}"></td>
                </tr>
                 <tr>
                    <td>Cargo</td>
                    <td><input name="txtcargo" type="text" value="${empleado.cargo}"></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input value="Grabar" type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
