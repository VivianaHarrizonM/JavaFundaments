
package beans.backing;

import beans.model.Candidato;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;

/**
 * @author viviana-harrizon
 */

@Named("VacanteForm")
@RequestScoped
public class VacanteForm {
    
    @Inject
    private Candidato candidato;
    
    public void serCandidato(Candidato candidato){
        this.candidato = candidato;
    }
    
    public String enviar(){
        if(this.candidato.getNombre().equals("Juan")){
            return "exito?faces-redirect=true";
        }else{
              return "fallo?faces-redirect=true";
        }
    }
}
