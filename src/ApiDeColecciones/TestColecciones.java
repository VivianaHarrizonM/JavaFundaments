
package ApiDeColecciones;

import java.util.*;

/**
 *
 * @author Viviana
 */
public class TestColecciones {
    public static void main(String[] args) {
        List miLista = new ArrayList();
        miLista.add("Lunes");
        miLista.add("Martes");
        miLista.add("Miercoles");
        miLista.add("Jueves");
        miLista.add("Viernes");
        miLista.add("Sabado");
        miLista.add("Domingo");
        
//        for(Object elemento: miLista){
//            System.out.println("elemento = " + elemento);
//        }

//          miLista.forEach(elemento -> {
//            System.out.println("elemento = " + elemento);
//          });
 
          Set miSet = new HashSet();
          miSet.add("Lunes");
          miSet.add("Martes");
          miSet.add("Miercoles");
          miSet.add("Jueves");
          miSet.add("Viernes");
          miSet.add("Sabado");
          miSet.add("Domingo");
          System.out.println("Mi lista");
          imprimir(miLista);
          System.out.println("Mi Set");
          imprimir(miSet);
          }
    public static void imprimir(Collection coleccion){
              coleccion.forEach(elemento -> {
            System.out.println("elemento = " + elemento);
          });
    }
}
