import 'dart:io';

void main() {
  stdout.write("Ingresa el primer valor del rango: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingresa el segundo valor del rango: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingresa el número: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (num1 <= numero && numero <= num2) {
    print("El número $numero está dentro del rango.");
  } else {
    print("El número $numero no está dentro del rango.");
  }
}