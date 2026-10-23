
package beans.backing;

import beans.model.Candidato;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author viviana-harrizon
 */

@Named("VacanteForm")
@RequestScoped
public class VacanteForm {
     private static final Logger log = LoggerFactory.getLogger(VacanteForm.class);
   
    
    @Inject
    private Candidato candidato;
    
    public void serCandidato(Candidato candidato){
        this.candidato = candidato;
    }
    
    public String enviar(){
        log.info("Procesando solicitud para: " + this.candidato.getNombre());
        if(this.candidato.getNombre().equals("Juan")){
            return "exito?faces-redirect=true";
        }else{
              return "fallo?faces-redirect=true";
        }
    }
}
