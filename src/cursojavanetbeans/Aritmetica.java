
package cursojavanetbeans;

public class Aritmetica {
    // Atributos de la clase
    int a, b;
    
    //Constructor vacio
    public Aritmetica()  {
        System.out.println("Ejecutando Constructor");
    }

    // Constructor para inicializar valores
    public Aritmetica(int a, int b) {
        this.a = a;
        this.b = b;
        System.out.println("");
        System.out.println("Ejecutando constructor con argumentos");     
    }

    // Método sumar sin retorno
    public void sumar() {
        int resultado = a + b;
        System.out.println("La suma es: " + resultado);
    }

    // Método sumar con retorno
    public int sumarConRetorno() {
        return a + b;
    }
    public int sumarConArgumentos(int arg1, int arg2){
        this.a= arg1;
        this.b= arg2;
       // return a + b;
        return sumarConRetorno();
    }
    
}