import 'dart:io';

void main() {
  int numeroDePersonas = 0;
  stdout.write("Ingrese el número de personas: ");
  numeroDePersonas = int.parse(stdin.readLineSync()!);

  var personas = [];

  for (int i = 1; i <= numeroDePersonas; i++) {
    stdout.write("\nPersona $i\n");

    stdout.write(("Ingrese el genero de la persona: "));
    String genero = stdin.readLineSync()!;

    while (genero != "masculino" && genero != "femenino") {
      print("Genero no valido.");
      stdout.write(("Ingrese el genero de la persona: "));
      genero = stdin.readLineSync()!;
    }

    personas.add({
      "id": i,
      "genero": genero,
    });
  }

  int promedioMasculino = 0;
  int promedioFemenino = 0;

  for (var persona in personas) {
    String generofor = persona["genero"];
    if (generofor == "masculino") {
      promedioMasculino++;
    } else if (generofor == "femenino") {
      promedioFemenino++;
    }
  }

  int total = promedioMasculino + promedioFemenino;


  print("\nNumero de personas: $numeroDePersonas\nPromedio de hombres: $promedioMasculino\nPromedio de mujeres: $promedioFemenino");

  print("\nLista de personas: ");
  for (var persona in personas) {
    print("Persona #${persona["id"]}");
    print("Genero: ${persona["genero"]}\n");
  }
}
