/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
import tienda.modelo.bean.Libro;
import tienda.modelo.bean.Usuario;
import tienda.modelo.dao.LibroDAO;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "ServletLibro", urlPatterns = {"/ServletLibro","/obtenerLibros","/listarLibros","/nuevoLibro","/editarLibro","/grabarLibro","/actualizarLibro","/eliminarLibro"})
public class ServletLibro extends HttpServlet {

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
        
        if (path.equals("/obtenerLibros")) {
            //valor que viene por la url
            String clave = request.getParameter("input_libro");
            request.setAttribute("listarLib", LibroDAO.obtener(clave));
            request.getRequestDispatcher("WEB-INF/Libros/LibrosEncontrados.jsp").forward(request, response);
        }
        if(path.equals("/listarLibros")){
            request.setAttribute("listarLib", LibroDAO.listar());
            request.getRequestDispatcher("WEB-INF/Libros/Libros.jsp").forward(request,response);
        }
        if(path.equals("/nuevoLibro")){
            //valor que viene por la url
            //int isbn = Integer.parseInt(request.getParameter("isbn"));
            request.setAttribute("libro", new Libro());
            request.getRequestDispatcher("WEB-INF/Libros/FormNuevo.jsp").forward(request, response);
        }
        if (path.equals("/editarLibro")) {
            //valor que viene por la url
            int isbn = Integer.parseInt(request.getParameter("isbn"));
            request.setAttribute("libro", LibroDAO.obtenerLibro(isbn));
            request.getRequestDispatcher("WEB-INF/Libros/FormEditar.jsp").forward(request, response);
        }
        if(path.equals("/grabarLibro")){
            
            Libro lib=new Libro();
            lib.setIsbn(Integer.parseInt(request.getParameter("txtisbn")));
            lib.setTitulo(request.getParameter("txttitulo"));
            lib.setAutor(request.getParameter("txtautor"));
            lib.setGenero(request.getParameter("txtgenero"));
            lib.setEditorial(request.getParameter("txteditorial"));
            lib.setSinopsis(request.getParameter("txtsinopsis"));            
            LibroDAO.insertar(lib);
            response.sendRedirect("listarLibros");
        }
        if(path.equals("/actualizarLibro")){
         
            Libro lib=new Libro();
            lib.setIsbn(Integer.parseInt(request.getParameter("txtisbn")));
            lib.setTitulo(request.getParameter("txttitulo"));
            lib.setAutor(request.getParameter("txtautor"));
            lib.setGenero(request.getParameter("txtgenero"));
            lib.setEditorial(request.getParameter("txteditorial"));
            lib.setSinopsis(request.getParameter("txtsinopsis"));            
            LibroDAO.editar(lib);
            response.sendRedirect("listarLibros");
        }
        if(path.equals("/eliminarLibro")){
            
            int isbn=(Integer.parseInt(request.getParameter("isbn")));
            LibroDAO.eliminar(isbn);
            response.sendRedirect("listarLibros");
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
