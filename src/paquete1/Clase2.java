
package paquete1;

import paquete1.Clase1;

public class Clase2 extends Clase1{

    public Clase2() {
        super();
        //Protected
//        this.atributoProtected = "Modificacion protected";
//        System.out.println("atributoProtected = " + atributoProtected);
//        this.metodoProtected();

//Default
        this.atributoDefault = "Modificacion default";
        System.out.println("atributoProtected = " + atributoDefault);
        this.metodoDefault();
    }
    
}
