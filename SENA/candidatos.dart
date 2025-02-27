import 'dart:io';

void main() {
  const candidato1 = "Daniela";
  const candidato2 = "Fernando";

  var votos1 = 0;
  var votos2 = 0;
  var votoBlanco = 0;
  var votos = 0;

  int numeroDeVotantes = 0;
  stdout.write("Ingrese el numero de votantes: ");
  numeroDeVotantes = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numeroDeVotantes; i++) {
    print("\nVoto #$i\n");
    stdout.write(
      "1. $candidato1\n2. $candidato2\n3. Blanco\nIngrese su voto: ",
    );
    int voto = int.parse(stdin.readLineSync()!);

    if (voto == 1) {
      votos1++;
    } else if (voto == 2) {
      votos2++;
    } else if (voto == 3) {
      votoBlanco++;
    } else {
      while (voto != 1 && voto != 2 && voto != 3) {
        print("Voto inválido");
        stdout.write(
          "1. $candidato1\n2. $candidato2\n3. Blanco\nIngrese su voto: ",
        );
        voto = int.parse(stdin.readLineSync()!);
      }
    }
    votos++;
  }

  print("\nResultados:");

  if (votos1 > votos2 && votos1 > votoBlanco) {
    print("El ganador es $candidato1 con $votos1 votos.");
  } else if (votos2 > votos1 && votos2 > votoBlanco) {
    print("El ganador es $candidato2 con $votos2 votos.");
  } else if (votoBlanco > 0 && votoBlanco > votos1 && votoBlanco > votos2) {
    print("El ganador es Blanco con $votoBlanco votos.");
  } else {
    print("No hay ganador.");
  }
  print(
    "\nVotos de $candidato1: $votos1\nVotos de $candidato2: $votos2\nVotos en blanco: $votoBlanco\nVotos totales: $votos",
  );
}
