
package test;


public class TestAutoboxinUnboxin {
    public static void main(String[] args) {
        Integer entero = 10; //Autoboxin
        
        System.out.println("entero = " + entero);
        System.out.println("entero double = " + entero.doubleValue());
        
        Integer entero1 = entero; //Unboxing
        
        System.out.println("entero = " + entero1);
    }
}
