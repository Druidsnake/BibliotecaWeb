<%-- 
    Document   : Empleados
    Created on : 18/01/2017, 06:28:45 PM
    Author     : Alumno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function confirmar(){
                if(confirm("Esta seguro de eliminar emopleado?")){
                    return true;
                }
                return false;
            }
        </script>
    </head>
    <body>
        <h1>Empleados</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Nombre</td>
                <td>Apellido Paterno</td>
                <td>Apellido Materno</td>
                <td>Cargo</td>
                <td colspan="2"> <a href="nuevoEmpleado">Nuevo</a></td>
            </tr>

            <%
               ArrayList<Empleado> empleados = (ArrayList<Empleado>) request.getAttribute("listarEmp");
               for (Empleado x : empleados) {%>
            <tr>
                <td><%=x.getIdempleado()%></td>
                <td><%=x.getNombre()%></td>
                <td><%=x.getPaterno()%></td>
                <td><%=x.getMaterno()%></td>
                <td><%=x.getCargo()%></td>
                <td><a href="editarEmpleado?id=<%=x.getIdempleado()%>">Editar</a></td>
                <td><a href="eliminarEmpleado?id=<%=x.getIdempleado()%>" onclick="return confirmar();" >Eliminar</a></td>

            </tr>
            <% }%>
        </table>
    </body>
</html>
