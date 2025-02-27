import 'dart:io';

void main() {
  stdout.write("Ingrese el 1er número: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el 2do número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int resultado = 0;

  while (num1 >= num2) {
    num1 -= num2;
    resultado++;
  }
  print("El resultado de la division es: $resultado");
  print("El residuo es: $num1");
}
