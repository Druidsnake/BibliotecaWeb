package tienda.modelo.bean;
public class Reserva {

  private String titulo;
  private String autor;
  private int idreserva;
  private String usuario;
  private int isbn;
  private String fecha_desde;
  private String fecha_hasta;
    
    

    /////////////////////////////////

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
  
    
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getIdreserva() {
        return idreserva;
    }

    public void setIdreserva(int idreserva) {
        this.idreserva = idreserva;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public String getFecha_desde() {
        return fecha_desde;
    }

    public void setFecha_desde(String fecha_desde) {
        this.fecha_desde = fecha_desde;
    }

    public String getFecha_hasta() {
        return fecha_hasta;
    }

    public void setFecha_hasta(String fecha_hasta) {
        this.fecha_hasta = fecha_hasta;
    }

    

    
  
  
}
