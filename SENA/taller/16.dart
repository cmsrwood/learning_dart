import 'dart:io';

void main() {
  stdout.write("Ingresa el 1er valor del triangulo: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingresa el 2do valor del triangulo: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingresa el 3er valor del triangulo: ");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 + num2 > num3 && num1 + num3 > num2 && num2 + num3 > num1) {
    if (num1 == num2 && num2 == num3) {
      print("El triangulo es equilatero");
    } else if (num1 == num2 || num2 == num3 || num1 == num3) {
      print("El triangulo es isosceles");
    } else {
      print("El triangulo es escaleno");
    }
  } else {
    print("Las longitudes ingresadas no pueden formar un triangulo.");
  }
}
