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

   public static Libro obtenerLibro(int isbn) {
        String sql = "select*from libros where isbn=?";
        Connection cn = Conexion.abrir();
        Libro lib = null;
        //prepareStatemnet para ejecutar sql
        PreparedStatement stm;
        try {
            stm = cn.prepareStatement(sql);
            //asignar valor a los parametros ? ?
            stm.setInt(1, isbn);
            //ejecuar stm
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                lib = new Libro();
                lib.setIsbn(rs.getInt(1));
                lib.setTitulo(rs.getString(2));
                lib.setAutor(rs.getString(3));
                lib.setGenero(rs.getString(4));
                lib.setEditorial(rs.getString(5));
                lib.setSinopsis(rs.getString(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lib;
    }

    //-----------------------------
    public static ArrayList<Libro> listar() {
        ArrayList<Libro> libros = new ArrayList<>();
        Libro lib;
        PreparedStatement ps;
        ResultSet rs;
        String sql = "select*from libros";
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
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

    //------------
    public static void insertar(Libro lib) {
        String sql = "insert into libros(isbn,titulo,autor,genero,editorial,sinopsis)values(?,?,?,?,?,?)";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            ps.setInt(1,lib.getIsbn());
            ps.setString(2, lib.getTitulo());
            ps.setString(3, lib.getAutor());
            ps.setString(4, lib.getGenero());
            ps.setString(5, lib.getEditorial());
            ps.setString(6, lib.getSinopsis());            
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(LibroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //-------------------------

    public static void editar(Libro lib) {
        String sql = "update libros set titulo=?,autor=?,genero=?,editorial=?,sinopsis=? where isbn=?";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            ps.setString(1, lib.getTitulo());
            ps.setString(2, lib.getAutor());
            ps.setString(3, lib.getGenero());
            ps.setString(4, lib.getEditorial());
            ps.setString(5, lib.getSinopsis());
            ps.setInt(6, lib.getIsbn());
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(LibroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //---------------------

    public static void eliminar(int isbn) {
        String sql = "delete from libros where isbn=?";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);
            ps.setInt(1, isbn);
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(LibroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
