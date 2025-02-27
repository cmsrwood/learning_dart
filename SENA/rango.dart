import 'dart:io';

void main() {

  stdout.write("Ingrese el 1er número: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el 2do número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("El 1er número debe ser menor que el 2do número.");
    return;
  } 

  for (num1; num1 <= num2; num1++) {
    print(num1);
  }
}