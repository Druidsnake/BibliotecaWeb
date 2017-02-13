package tienda.conexion;
import java.sql.Connection;
import java.sql.DriverManager;
public class Conexion {

    static String url = "jdbc:mysql://localhost/biblio";
    static String usuario = "root";
    static String Password = "root";

    public static Connection abrir() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = (Connection) DriverManager.getConnection(url, usuario, Password);
            return cn;
        } catch (Exception ex) {
            return null;
        }
    }

}
