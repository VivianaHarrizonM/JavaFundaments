
package dominio1;

public class Empleado2 extends Persona2{
    private int idEmpleado;
    private double sueldo;
    private static int contadorEmpleado;

    public Empleado2(){
        this.idEmpleado = ++Empleado2.contadorEmpleado;
    }
    public Empleado2(String nombre, double sueldo) {
        //super(nombre);
        //this.idEmpleado = ++Empleado2.contadorEmpleado;
        this();
        this.nombre = nombre;
        this.sueldo = sueldo;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }


    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empleado{ ");
        sb.append("idEmpleado = ").append(idEmpleado);
        sb.append(", sueldo = ").append(sueldo);
        sb.append(", ").append(super.toString());
        sb.append('}');
        return sb.toString();
    }
    
    
}
