import 'dart:io';

void main() {
  int numeroDeEstudiantes = 0;
  double notasAcumulador = 0;
  stdout.write("Ingrese el número de personas: ");
  numeroDeEstudiantes = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numeroDeEstudiantes; i++) {
    stdout.write("\nEstudiante $i\n");
    stdout.write("Ingrese la nota del estudiante: ");
    double notas = double.parse(stdin.readLineSync()!);
    while (notas < 0 || notas > 5) {
      print("La nota no puede ser negativa o mayor a 10.");
      stdout.write("Ingrese la nota del estudiante: ");
      notas = double.parse(stdin.readLineSync()!);
    }
    notasAcumulador += notas;
  }

  double promedio = notasAcumulador / numeroDeEstudiantes;

  print("\nEl promedio de notas es: $promedio");
}
