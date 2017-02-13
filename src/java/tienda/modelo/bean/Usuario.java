package tienda.modelo.bean;
public class Usuario {
  private int idusuario;
  private String nom1;
  private String nom2;
  private String ape_pa;
  private String ape_ma;
  private String mail;
  private int telefono;
  private String password;
  private int nivel;
    
  /////////////////////////////////

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNom1() {
        return nom1;
    }

    public void setNom1(String nom1) {
        this.nom1 = nom1;
    }

    public String getNom2() {
        return nom2;
    }

    public void setNom2(String nom2) {
        this.nom2 = nom2;
    }

    public String getApe_pa() {
        return ape_pa;
    }

    public void setApe_pa(String ape_pa) {
        this.ape_pa = ape_pa;
    }

    public String getApe_ma() {
        return ape_ma;
    }

    public void setApe_ma(String ape_ma) {
        this.ape_ma = ape_ma;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }
  
  
}
