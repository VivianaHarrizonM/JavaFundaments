
package ConversionObjetos;

/**
 *
 * @author Viviana
 */
public class Escritor extends Empleado{
    
    final TipoEscritura tipoEscritura;
    
    public Escritor(String nombre, double sueldo, TipoEscritura tipoEscritura) {
        super(nombre, sueldo);
        this.tipoEscritura = tipoEscritura;
    }
    
    @Override
    public String obtenerDetalles(){
        return super.obtenerDetalles() + ", tipoEscritura: " + tipoEscritura.getDescripcion();
    }

    public TipoEscritura getTipoEscritura() {
        return tipoEscritura;
    }
    

    @Override
    public String toString() {
       StringBuilder sb = new StringBuilder();
        sb.append("Escritor{");
        sb.append("tipoEscritura=").append(tipoEscritura);
        sb.append(" ").append(super.toString());
        sb.append('}');
    return sb.toString();
    }
    
    
}
