/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Treslates
 * and open the template in the editor.
 */
package tienda.controlador.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tienda.modelo.bean.Empleado;
import tienda.modelo.bean.Reserva;
import tienda.modelo.bean.Usuario;
import tienda.modelo.dao.EmpleadoDAO;
import tienda.modelo.dao.ReservaDAO;


/**
 *
 * @author Alumno
 */
@WebServlet(name = "ServletReservar", urlPatterns = {"/ServletReservar","/Reservar","/listarReservados"})
public class ServletReservar extends HttpServlet {

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
        //obetener el valor del urlpateners
        String path = request.getServletPath();
        
        if (path.equals("/Reservar")) {
            //objeto empleado

            int cod = Integer.parseInt(request.getParameter("isbn"));
            String mail = request.getParameter("usuario");
            //encapsular datros en el objeto emp
            
            ReservaDAO.insertar(cod, mail);
           // response.sendRedirect("WEB-INF/index2.jsp");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        if (path.equals("/listarReservados")) {
            String clave = request.getParameter("mail");
            request.setAttribute("listarRes", ReservaDAO.listar(clave));
            request.getRequestDispatcher("WEB-INF/Usuario/MisReservados.jsp").forward(request, response);

        }
    }
//metodos personalizados

    
    
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
