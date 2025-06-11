
package test;

import Operaciones.Operaciones;


public class TestOperaciones {
    public static void main(String[] args) {
        var resultado = Operaciones.sumar(5,4);
        System.out.println("resultado = " + resultado);
        
        var resultado2 =  Operaciones.sumar(2.0, 3.6);
        System.out.println("resultado = " + resultado2);
    }
}
