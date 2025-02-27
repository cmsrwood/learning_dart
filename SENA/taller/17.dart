import 'dart:io';

void main() {
  final impuestos = {
    'CA': 0.0825, // California
    'NY': 0.08875, // New York
    'TX': 0.0625, // Texas
    'FL': 0.06, // Florida
    'MX': 0.16, // México
    'ES': 0.21, // España
  };

  stdout.write('Ingrese el estado o país (código de dos letras): ');
  final ubicacion = stdin.readLineSync()?.toUpperCase();

  if (ubicacion == null || !impuestos.containsKey(ubicacion)) {
    print('Ubicación no válida.');
    return;
  }

  stdout.write('Ingrese el precio de la compra: ');
  final precio = double.tryParse(stdin.readLineSync() ?? '');

  if (precio == null || precio < 0) {
    print('Precio no válido.');
    return;
  }

  final impuesto = precio * impuestos[ubicacion]!;

  print('Impuesto a pagar: ${impuesto.toStringAsFixed(2)}');
}
