/**
 * @author viviana-harrizon
 */

package beans.model;

import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import java.io.Serializable;


@Named("candidato")
@SessionScoped
public class Candidato implements Serializable{
    private String nombre = "valor";

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
