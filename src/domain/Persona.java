
package domain;


public class Persona {
    private final int idPersona;
    private static int contadorPersonas;
    private String nombre;
    
    static{
        System.out.println("Ejecucion bloque estatico");
        ++Persona.contadorPersonas;
    }
    
    {
        System.out.println("Ejecucion de bloque no estatico");
        this.idPersona = Persona.contadorPersonas++;
    }

    public Persona() {
        System.out.println("Ejecicion del constructor");
    }

    public Persona(String nombre) {
        this.nombre = nombre;
    }

    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdPersona() {
        return idPersona;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Persona{");
        sb.append("idPersona=").append(idPersona);
        sb.append(", nombre=").append(nombre);
        sb.append('}');
        return sb.toString();
    }
    

   
    
    
}
