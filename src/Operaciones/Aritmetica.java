
package operaciones;

public class Aritmetica {
    int a, b;
    
    public Aritmetica(){
        System.out.println("Ejecutando constructor vacio");
    }
    public void sumar(){
        int resultado = a + b;
        System.out.println("resultado: " + resultado);
    }
    
    public Aritmetica( int arg1, int arg2){
        this.a = arg1;
        this.b = arg2;
        System.out.println("Ejecutando constructor con argumentos");
    }
    
    public int sumarConRetorno(){
        return a + b;
    }
    
    public int sumarConArgumentos(int a, int b) {
    this.a = a; // Asignar el valor del argumento al atributo
    this.b = b;
    return this.sumarConRetorno();
}
    
}

