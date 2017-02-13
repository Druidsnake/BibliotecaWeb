/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tienda.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import tienda.conexion.Conexion;
import tienda.modelo.bean.Libro;

/**
 *
 * @author Alumno
 */
public class LibroDAO {

    //-----------------------------
    public static ArrayList<Libro> obtener(String clave) {
        ArrayList<Libro> libros = new ArrayList<>();
        
        PreparedStatement ps;
        ResultSet rs;
        String sql = "SELECT * FROM libros where (titulo LIKE ?)";
        Connection cn = Conexion.abrir();
        Libro lib= null;
        try {
            String clavepro=clave +"%";
            ps = cn.prepareStatement(sql);
            ps.setString(1, clavepro);
            rs = ps.executeQuery();
            while (rs.next()) {
                lib = new Libro();
                lib.setIsbn(rs.getInt(1));
                lib.setTitulo(rs.getString(2));
                lib.setAutor(rs.getString(3));
                lib.setGenero(rs.getString(4));
                lib.setEditorial(rs.getString(5));
                lib.setSinopsis(rs.getString(6));
                //agregar arreglo
                libros.add(lib);
                
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {

        }
        return libros;
    }

    //-----------------------------
    public static ArrayList<Libro> listar() {
        ArrayList<Libro> empleados = new ArrayList<>();
        Libro emp;
        PreparedStatement ps;
        ResultSet rs;
        String sql = "select*from empleado";
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                emp = new Libro();
      //          emp.setIdempleado(rs.getInt(1));
        //        emp.setNombre(rs.getString(2));
         //       emp.setPaterno(rs.getString(3));
          //      emp.setMaterno(rs.getString(4));
           //     emp.setCargo(rs.getString(5));
                //agregar arreglo
                empleados.add(emp);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {

        }
        return empleados;

    }

    //------------
    public static void insertar(Libro emp) {
        String sql = "insert into empleado(nombre,apepaterno,apematerno,cargo)values(?,?,?,?)";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
  //          ps.setString(1, emp.getNombre());
  //          ps.setString(2, emp.getPaterno());
  //          ps.setString(3, emp.getMaterno());
  //          ps.setString(4, emp.getCargo());
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(LibroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //-------------------------

    public static void editar(Libro emp) {
        String sql = "update empleado set nombre=?,apepaterno=?,apematerno=?,cargo=? where idempleado=?";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
 //           ps.setString(1, emp.getNombre());
 //           ps.setString(2, emp.getPaterno());
 //           ps.setString(3, emp.getMaterno());
 //           ps.setString(4, emp.getCargo());
 //           ps.setInt(5, emp.getIdempleado());
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(LibroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //---------------------

    public static void eliminar(int cod) {
        String sql = "delete from empleado where idempleado=?";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            ps.setInt(1, cod);
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(LibroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
