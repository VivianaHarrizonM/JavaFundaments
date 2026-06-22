public class Empleado {
    private String nombre;
    private double salario;
    private String puesto;

        public Empleado(String nombre, double salario, String puesto) {
            this.nombre = nombre;
            this.salario = salario;
            this.puesto = puesto;
        }

        public String getNombre() {
            return nombre;
        }

        public void setNombre(String nombre) {
            this.nombre = nombre;
        }

        public double getSalario() {
            return salario;
        }

        public void setSalario(double salario) {
            this.salario = salario;
        }

        public String getPuesto() {
            return puesto;
        }

        public void setPuesto(String puesto) {
            this.puesto = puesto;
        }

        public void aumentarSalario(double porcentaje){
            salario += salario * (porcentaje / 100);
        }
        @Override
        public String toString() {
            return "Empleado{" +
                    "nombre='" + nombre + '\'' +
                    ", salario=" + salario +
                    ", puesto='" + puesto + '\'' +
                    '}';
        }

}

