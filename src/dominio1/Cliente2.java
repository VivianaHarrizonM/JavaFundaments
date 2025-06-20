
package dominio1;

import java.util.Date;

public class Cliente2 extends Persona2{
    private int idCliente;
    private Date fechaRegistro;
    private boolean vip;
    private static int contadorCliente;

    public Cliente2(Date fechaRegistro, boolean vip, String nombre, char genero,
            int edad, String direccion) {
        super(nombre, genero, edad, direccion);
        this.idCliente = ++Cliente2.contadorCliente;
        this.fechaRegistro = fechaRegistro;
        this.vip = vip;
    }

     
    public int getIdCliente() {
        return idCliente;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public boolean isVip() {
        return vip;
    }

    public void setVip(boolean vip) {
        this.vip = vip;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Cliente{");
        sb.append("idCliente=").append(idCliente);
        sb.append(", fechaRegistro=").append(fechaRegistro);
        sb.append(", vip=").append(vip);
        sb.append('}');
        return sb.toString();
    }
    
    
    
}
