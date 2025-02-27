import 'dart:io';

void main() {
  print('Por favor, ingresa tu edad:');
  String? edadInput = stdin.readLineSync();
  int edad = int.tryParse(edadInput ?? '') ?? 0;

  if (edad <= 0) {
    print('La edad no puede ser cero o negativa.');
    return;
  }

  print('¿Tienes una membresía? (s/n):');
  String? tieneMembresia = stdin.readLineSync()?.toLowerCase();

  print('¿Tienes un cupón de descuento? (s/n):');
  String? tieneCupon = stdin.readLineSync()?.toLowerCase();

  bool tieneDescuento = tieneMembresia == 's' || tieneCupon == 's';
  bool cumpleCondiciones = edad >= 18 && edad <= 60;

  if (cumpleCondiciones && tieneDescuento) {
    print('¡Felicidades! Tienes acceso a la oferta especial.');
  } else if (cumpleCondiciones) {
    print(
      'Tienes entre 18 y 60 años, pero necesitas un cupón o membresía para obtener un descuento.',
    );
  } else if (tieneDescuento) {
    print(
      'Tienes un cupón o membresía, pero no cumples con la edad requerida (18-60 años).',
    );
  } else {
    print('Lo siento, no cumples con los requisitos para la oferta especial.');
  }
}
