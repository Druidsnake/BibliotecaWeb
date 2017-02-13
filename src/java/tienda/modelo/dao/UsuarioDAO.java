
package tienda.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import tienda.conexion.Conexion;
import tienda.modelo.bean.Empleado;
import tienda.modelo.bean.Usuario;
import tienda.modelo.bean.Usuario;

public class UsuarioDAO {
    public static Usuario validarUsuario(String us,String pas){
    //cadena para seleccionar un usuario por su clave
    String sql="select*from usuario where mail=? and password=?";
    //conexion a la base de datos
    Connection cn=Conexion.abrir();
        try {
            //prepareStatemnet para ejecutar sql
            PreparedStatement stm=cn.prepareStatement(sql);
            //asignar valor a los parametros ? ?
            stm.setString(1, us);
            stm.setString(2, pas);
            //ejecuar stm
            ResultSet rs=stm.executeQuery();
            //vareiable usuario
            Usuario u=null;
            if(rs.next()){
            //crear objeto usuario
             u=new Usuario();
             //encapsulamiento de datos
             u.setIdusuario(rs.getInt(1));
             u.setNom1(rs.getString(2));
             u.setNom2(rs.getString(3));
             u.setApe_pa(rs.getString(4));
             u.setApe_ma(rs.getString(5));
             u.setMail(rs.getString(6));
             u.setTelefono(rs.getInt(7));
             u.setPassword(rs.getString(8));
             u.setNivel(rs.getInt(9));
            }
            return u;
        } catch (SQLException ex) {
            return null;
        }
        }
    //------------
    public static void insertar(Usuario usu) {
        String sql = "insert into usuario(mail,password)values(?,?)";
        PreparedStatement ps;
        Connection cn = Conexion.abrir();
        try {
            ps = cn.prepareStatement(sql);

            ps.setString(1, usu.getMail());
            ps.setString(2, usu.getPassword());

            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
