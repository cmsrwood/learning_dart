import 'dart:io';

List<String> frutas = ['Manzana', 'Banana', 'Naranja', 'Pera'];

void main() {
  var contador = 0;
  for (int i = 0; i < frutas.length; i++) {
    print("Fruta #${i + 1}: ${frutas[i]}");
    contador++;
  }
  print("El total de frutas es: $contador");
}
