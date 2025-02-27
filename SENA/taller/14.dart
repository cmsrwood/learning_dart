import 'dart:io';

void main() {
  final unidades = {
    'metros': 1.0,
    'centímetros': 0.01,
    'milímetros': 0.001,
    'kilómetros': 1000.0,
    'pies': 0.3048,
    'pulgadas': 0.0254,
    'yardas': 0.9144,
  };

  stdout.write('Ingrese la unidad de longitud de entrada: ');
  final unidadEntrada = stdin.readLineSync()?.toLowerCase();

  if (unidadEntrada == null || !unidades.containsKey(unidadEntrada)) {
    print('Unidad de longitud de entrada no válida.');
    return;
  }

  stdout.write('Ingrese la cantidad de longitud: ');
  final cantidad = double.tryParse(stdin.readLineSync() ?? '');

  if (cantidad == null) {
    print('Cantidad de longitud no válida.');
    return;
  }

  stdout.write('Ingrese la unidad de longitud de salida: ');
  final unidadSalida = stdin.readLineSync()?.toLowerCase();

  if (unidadSalida == null || !unidades.containsKey(unidadSalida)) {
    print('Unidad de longitud de salida no válida.');
    return;
  }

  final factorEntrada = unidades[unidadEntrada]!;
  final factorSalida = unidades[unidadSalida]!;
  final resultado = cantidad * factorEntrada / factorSalida;

  print(
    '$cantidad $unidadEntrada son ${resultado.toStringAsFixed(2)} $unidadSalida.',
  );
}
