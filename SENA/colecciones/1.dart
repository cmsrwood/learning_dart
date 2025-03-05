import 'dart:io';

Map<String, double> notas = {'Ana': 5, 'Juan': 4};

void main() {
  while (true) {
    print("\n--------------MENU------------");
    print("1. Agregar estudiante");
    print("2. Mostrar estudiantes");
    print("3. Buscar estudiante");
    print("4. Eliminar estudiante");
    stdout.write("Ingrese una opción: ");
    String? opcion = stdin.readLineSync();
    if (opcion == "1") {
      agregar();
    } else if (opcion == "2") {
      mostrar();
    } else if (opcion == "3") {
      buscar();
    } else if (opcion == "4") {
      eliminar();
    } else if (opcion == "5") {
      print("¡Hasta luego!");
      break;
    } else {
      print("\nOpción no válida");
    }
  }
}

void agregar() {
  stdout.write("Ingrese el nombre del estudiante: ");
  String nombre = stdin.readLineSync()!;
  stdout.write("Ingrese la nota del estudiante: ");
  double nota = double.parse(stdin.readLineSync()!);
  notas.addAll({nombre: nota});
  print("Estudiante agregado: $nombre con nota $nota");
}

void mostrar() {
  print("\n");
  notas.forEach(
    (estudiante, valor) => print('$estudiante tiene la nota $valor'),
  );
}

void buscar() {
  stdout.write("Ingrese el nombre del estudiante a buscar: ");
  String nombre = stdin.readLineSync()!;
  if (notas.containsKey(nombre)) {
    print("$nombre tiene la nota ${notas[nombre]}");
  } else {
    print("Estudiante no encontrado");
  }
}

void eliminar() {
  stdout.write("Ingrese el nombre del estudiante a eliminar: ");
  String nombre = stdin.readLineSync()!;
  if (notas.containsKey(nombre)) {
    notas.remove(nombre);
    print("Estudiante eliminado: $nombre");
  } else {
    print("Estudiante no encontrado");
  }
}
