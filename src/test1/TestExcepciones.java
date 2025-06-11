package test1;

import aritmetica.Aritmetica;

/**
 *
 * @author Viviana
 */
public class TestExcepciones {
    public static void main(String[] args) {
        int resultado = 0;
        try{
            resultado = Aritmetica.division(resultado,resultado);
        }catch(Exception e){
            System.out.println("Ocurrio un error: ");
            e.printStackTrace(System.out);
        }
        
        
        System.out.println("resultado = " + resultado);
    }
    
}
