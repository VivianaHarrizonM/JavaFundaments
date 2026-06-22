
package test;

import Interfaes.*;

/**
 *
 * @author Viviana
 */
public class TestInterfaces {
//    public static void main(String[] args) {
//        IAccesoDatos datos = new ImplementacionMYSQL();
//        datos.listar();
//        imprimir(datos);
//        
//        IAccesoDatos datos1 = new ImplementacionOracle();
//        datos1.listar();
//        imprimir(datos1);
//    }
//    
    public static void imprimir(IAccesoDatos datos){
        datos.listar();
    }
}
