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
import tienda.modelo.bean.Empleado;
import tienda.modelo.bean.Usuario;
import tienda.modelo.dao.EmpleadoDAO;
import tienda.modelo.dao.UsuarioDAO;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "ServletUsuario", urlPatterns = {"/Index","/Login","/Registrarse","/registrarUsuario","/ServletUsuario", "/CerrarSesion"})
public class ServletUsuario extends HttpServlet {

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
        
        if (path.equals("/Index")) {
            //invocar a
            request.getRequestDispatcher("WEB-INF/index2.jsp").forward(request, response);
        }
        if (path.equals("/Registrarse")) {
            //invocar a
            request.getRequestDispatcher("WEB-INF/Usuario/FormUsuario.jsp").forward(request, response);
        }
        if (path.equals("/registrarUsuario")) {
            //objeto empleado
            Usuario usu = new Usuario();
        //    int cod = Integer.parseInt(request.getParameter("txtcodigo"));
            String mail=request.getParameter("mail");
            String pass1=request.getParameter("pass1");
            String pass2=request.getParameter("pass2");
            if (pass1==pass2) {
                usu.setMail(request.getParameter("mail"));
                usu.setPassword(request.getParameter("pass1"));
                UsuarioDAO.insertar(usu);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            else{
                response.sendRedirect("Registrarse");
            }
            //encapsular datros en el objeto emp
            



            //request.getRequestDispatcher("WEB-INF/Empleado/Empleados.jsp").forward(request, response);
        }
        if (path.equals("/Login")) {
            //invocar a
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        if (path.equals("/ServletUsuario")) {
            //invocar a
            autenticar(request, response);
        }
        if (path.equals("/CerrarSesion")) {
           //invocar a
            cerrarSesion(request, response);
        }
    }
//metodos personalizados
   protected void autenticar(HttpServletRequest request,HttpServletResponse response)
           throws ServletException, IOException {
       //capturar datos del usuario
       String user=request.getParameter("txtusuario");
       String clav=request.getParameter("txtclave");
       //obtener usuario del modelo
       Usuario usuario=UsuarioDAO.validarUsuario(user, clav);
       if(usuario!=null){
           //almacenar el usuario en la variable de sesion usu
           request.getSession().setAttribute("u", usuario);
         //  request.getSession().setAttribute("emp",EmpleadoDAO.obtenerEmpleado(usuario.getIdempleado()) );
           //ir a princiapl.jsp
           request.getRequestDispatcher("WEB-INF/index2.jsp").forward(request, response);
           request.getRequestDispatcher("WEB-INF/UsuAdmi.jsp").forward(request, response);
       }else{
           request.setAttribute("msg", "Usuario y/o password incorrecto...!");
           //ir a login
          request.getRequestDispatcher("login.jsp").forward(request, response);
                
       }
       
   
   }
    protected void cerrarSesion(HttpServletRequest request,HttpServletResponse response)
           throws ServletException, IOException {
     request.getSession().invalidate();
      request.getRequestDispatcher("index.jsp").forward(request, response);
 
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
