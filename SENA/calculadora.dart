import 'dart:io';

void main() {
  stdout.write("Opciones\n1.Sumar\n2.Restar\n3.Multiplicar\n4.Dividir\n5.Potencia\n6.Salir\nTu opción es: ");
  int opcion = int.parse(stdin.readLineSync()!);
  String continuar = "Y";
  while (opcion != 6 && continuar == "Y") {
    stdout.write("Ingrese el 1er número: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Ingrese el 2do número: ");
    double num2 = double.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        double suma = num1 + num2;
        print("La suma de $num1 y $num2 es: $suma");
        break;
      case 2:
        double resta = num1 - num2;
        print("La resta de $num1 y $num2 es: $resta");
        break;
      case 3:
        double multiplicacion = num1 * num2;
        print("La multiplicacion de $num1 y $num2 es: $multiplicacion");
        break;
      case 4:
        double division = num1 / num2;
        print("La division de $num1 y $num2 es: $division");
        break;
      case 5:
        double potencia = num1;
        for (int i = 0; i < num2; i++) {
          potencia *= num1;
        }
        print("La potencia de $num1 y $num2 es: $potencia");
        break;
      case 6:
        print("Gracias por usar la calculadora");
        break;
      default:
        print("Opción inválida. Por favor, ingrese una opción válida.");
    }
    stdout.write("¿Desea continuar? (Y/N): ");
    continuar = stdin.readLineSync()!.toUpperCase();
    while (continuar != "Y" && continuar != "N") {
      stdout.write("Opción inválida. Por favor, ingrese 'Y' o 'N': ");
      continuar = stdin.readLineSync()!.toUpperCase();
    }
    if (continuar == "N") {
      print("Gracias por usar la calculadora");
      break;
    } else {
      stdout.write("Opciones\n1.Sumar\n2.Restar\n3.Multiplicar\n4.Dividir\n5.Potencia\n6.Salir\nTu opción es: ");

      opcion = int.parse(stdin.readLineSync()!);
    }
  }
}
