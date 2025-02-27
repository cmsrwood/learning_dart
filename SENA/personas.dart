import 'dart:io';

void main() {
  int numeroDePersonas = 0;
  stdout.write("Ingrese el número de personas: ");
  numeroDePersonas = int.parse(stdin.readLineSync()!);

  var personas = [];

  for (int i = 1; i <= numeroDePersonas; i++) {
    stdout.write("\nPersona $i\n");
    stdout.write("Ingrese el nombre de la persona: ");
    String? nombres = stdin.readLineSync();

    stdout.write("Ingrese el apellido de la persona: ");
    String? apellidos = stdin.readLineSync();

    stdout.write(("Ingrese la edad de la persona: "));
    int edad = int.parse(stdin.readLineSync()!);

    while (edad < 0) {
      print("La edad no puede ser negativa.");
      stdout.write(("Ingrese la edad de la persona: "));
      edad = int.parse(stdin.readLineSync()!);
    }

    personas.add({"id" : i, "nombres": nombres, "apellidos": apellidos, "edad": edad});
  }

  int promedioEdad = 0;

  for (var persona in personas) {
    int edad = persona["edad"];
    promedioEdad += edad;
  }

  promedioEdad = promedioEdad ~/ numeroDePersonas;

  print("\nPromedio de edad: $promedioEdad\nNumero de personas: $numeroDePersonas");

  print("\nLista de personas: ");
  for(var persona in personas) {
    print("Persona #${persona["id"]}");
    print("Nombres: ${persona["nombres"]}");
    print("Apellidos: ${persona["apellidos"]}");
    print("Edad: ${persona["edad"]}\n");
  }
}
