import java.util.ArrayList;

public class Main {
    public static void mostrarEmpleados(ArrayList<Empleado> empleados) {
        for (Empleado e : empleados) {
            System.out.println(e);
        }
    }
    public static void filtrarPorSalario(ArrayList<Empleado> empleados, double minimo) {
        for (Empleado e : empleados) {
            if (e.getSalario() > minimo) {
                System.out.println(e);
            }
        }
    }
    public static double calcularPromedio(ArrayList<Empleado> empleados) {
        if (empleados.isEmpty()) {
            return 0;
        }

        double suma = 0;

        for (Empleado e : empleados) {
            suma += e.getSalario();
        }

        return suma / empleados.size();
    }

    public static Empleado buscarPorNombre(ArrayList<Empleado> empleados, String nombre) {
        for (Empleado e : empleados) {
            if (e.getNombre().equalsIgnoreCase(nombre)) {
                return e;
            }
        }
        return null;
    }


    public static void main(String[] args) {
        ArrayList<Empleado> empleados = new ArrayList<>();

        empleados.add(new Empleado("Ana", 12000, "Dev"));
        empleados.add(new Empleado("Luis", 9000, "QA"));
        empleados.add(new Empleado("Carlos", 15000, "Manager"));

        System.out.println("Todos:");
        mostrarEmpleados(empleados);

        System.out.println("\nSalarios mayores a 10000:");
        System.out.println("\nCon Streams (>10000):");

        empleados.stream()
                .filter(e -> e.getSalario() > 10000)
                .forEach(System.out::println);

        Empleado mayor = empleados.stream()
                .max((e1, e2) -> Double.compare(e1.getSalario(), e2.getSalario()))
                .orElse(null);

        System.out.println("\nEmpleado con mayor salario:");
        System.out.println(mayor);
        double promedio = calcularPromedio(empleados);
        System.out.println("\nPromedio: $" + String.format("%.2f", promedio));

        Empleado encontrado = buscarPorNombre(empleados, "Ana");

        if (encontrado != null) {
            System.out.println("\nEncontrado: " + encontrado);
        } else {
            System.out.println("\nNo encontrado");
        }

        if (encontrado != null) {
            encontrado.aumentarSalario(10);
            System.out.println("Nuevo salario: " + encontrado);
        }
    }
}