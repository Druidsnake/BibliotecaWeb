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
import tienda.modelo.bean.Usuario;
import tienda.modelo.bean.Empleado;
import tienda.modelo.bean.Libro;
import tienda.modelo.bean.Reserva;

/**
 *
 * @author Alumno
 */
public class ReservaDAO {

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
    public static ArrayList<Reserva> listar(String clave) {
        ArrayList<Reserva> reservas = new ArrayList<>();
        
        PreparedStatement ps;
        ResultSet rs;
        String sql = "SELECT L.titulo,L.autor,R.idreserva,R.usuario,R.isbn,R.fecha_desde,R.fecha_hasta FROM libros L,reservas R where R.usuario=? and L.isbn=R.isbn";
        Connection cn = Conexion.abrir();
        Reserva emp= null;
        try {
            ps = cn.prepareStatement(sql);
            ps.setString(1, clave);
            rs = ps.executeQuery();
            while (rs.next()) {
                emp = new Reserva();
                emp.setTitulo(rs.getString(1));
                emp.setAutor(rs.getString(2));
                emp.setIdreserva(rs.getInt(3));
                emp.setUsuario(rs.getString(4));
                emp.setIsbn(rs.getInt(5));
                emp.setFecha_desde(rs.getString(6));
                emp.setFecha_hasta(rs.getString(7));
                //agregar arreglo
                reservas.add(emp);
                
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {

        }
        return reservas;
    }

    //------------
    
    public static void insertar(int cod, String mail) {
        String sql = "insert into reservas(usuario,isbn,fecha_desde,fecha_hasta)values(?,?,CURDATE(),DATE_ADD(CURDATE(),INTERVAL 15 DAY))";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
 //           ps.setInt(1, res.getIdreserva());
            ps.setString(1, mail);
            ps.setInt(2, cod);
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReservaDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ReservaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //---------------------

    public static void eliminar(int cod) {
        String sql = "delete from reservas where idreserva=?";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            ps.setInt(1, cod);
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReservaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public static ArrayList<Reserva> listarTodasReservas() {
        ArrayList<Reserva> listaReserva = new ArrayList<>();
        Reserva res;
        PreparedStatement ps;
        ResultSet rs;
        String sql = "select*from reservas";
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                res = new Reserva();
                res.setIdreserva(rs.getInt(1));
                res.setUsuario(rs.getString(2));
                res.setIsbn(rs.getInt(3));
                res.setFecha_desde(rs.getString(4));
                res.setFecha_hasta(rs.getString(5));                
                //agregar arreglo
                listaReserva.add(res);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {

        }
        return listaReserva;

    }

}
