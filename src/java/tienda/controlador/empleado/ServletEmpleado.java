/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tienda.controlador.empleado;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tienda.modelo.bean.Empleado;
import tienda.modelo.dao.EmpleadoDAO;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "ServletEmpleado", urlPatterns = {"/ServletEmpleado", "/listarEmpleado", "/nuevoEmpleado", "/grabarEmpleado", "/eliminarEmpleado", "/editarEmpleado"})
public class ServletEmpleado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String path = request.getServletPath();
        
        if (path.equals("/listarEmpleado")) {
            request.setAttribute("listarEmp", EmpleadoDAO.listar());
            request.getRequestDispatcher("WEB-INF/Empleado/Empleados.jsp").forward(request, response);
        }
        if (path.equals("/nuevoEmpleado")) {
            request.setAttribute("empleado", new Empleado());
            request.getRequestDispatcher("WEB-INF/Empleado/FormEmpleado.jsp").forward(request, response);
        }
        if (path.equals("/eliminarEmpleado")) {
            //viene de la url
            int id = Integer.parseInt(request.getParameter("id"));
            EmpleadoDAO.eliminar(id);
            response.sendRedirect("listarEmpleado"); 
            //request.setAttribute("listarEmp", EmpleadoDAO.listar());
            //request.getRequestDispatcher("WEB-INF/Empleado/Empleados.jsp").forward(request, response);
        }
        if (path.equals("/editarEmpleado")) {
            //valor que viene por la url
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("empleado", EmpleadoDAO.obtenerEmpleado(id));
            request.getRequestDispatcher("WEB-INF/Empleado/FormEmpleado.jsp").forward(request, response);
        }
        if (path.equals("/grabarEmpleado")) {
            //objeto empleado
            Empleado emp = new Empleado();
            int cod = Integer.parseInt(request.getParameter("txtcodigo"));
            //encapsular datros en el objeto emp
            emp.setNombre(request.getParameter("txtnom"));
            emp.setPaterno(request.getParameter("txtpaterno"));
            emp.setMaterno(request.getParameter("txtmaterno"));
            emp.setCargo(request.getParameter("txtcargo"));
            if (cod > 0) {
                emp.setIdempleado(cod);
                EmpleadoDAO.editar(emp);
            } else {
                //isertar empleado
                EmpleadoDAO.insertar(emp);
            }
            response.sendRedirect("listarEmpleado");
            //request.getRequestDispatcher("WEB-INF/Empleado/Empleados.jsp").forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
