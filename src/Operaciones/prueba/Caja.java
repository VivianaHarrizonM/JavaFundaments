
package operaciones.prueba;

public class Caja {
    int ancho, alto, profundo;
    
    public Caja(){
        System.out.println("Constructor vacio");
    }
    
    public Caja(int ancho, int alto, int profundo){
        this.ancho = ancho;
        this.alto = alto;
        this.profundo = profundo;
    }
    
    public int calcularVolumen(){
        return ancho * alto * profundo;
    }
}
