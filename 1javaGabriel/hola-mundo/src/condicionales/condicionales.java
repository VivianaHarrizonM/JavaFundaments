package condicionales;

public class condicionales {
  public static void  main()
  {
    int age = 17;

    if (age > 18) {
      System.out.println("Es mayor a 18");
    } else {
      System.out.println("Es menor a 18");
    }

    int day = 3;
    switch (day){
      case 1:
        System.out.println("lunes");
        break;
      case 2:
        System.out.println("martes");
        break;
      case 3:
        System.out.println("miercoles");
        break;
      default:
        System.out.println("El dato ongresado no es valido");
        break;
    }
  }
}
