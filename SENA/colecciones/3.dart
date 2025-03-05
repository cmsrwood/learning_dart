import 'dart:io';

Map<String, List> notas = {
  'Matematicas': [2, 5, 5],
  'Programacion': [4, 5, 4],
  'Quimica': [5, 5, 5]
};

void main() {
  for (var materia in notas.keys) {
    print('Materia: $materia');
    double acumulador = 0;
    for (var nota in notas[materia]!) {
      print('Nota: $nota');
      acumulador += nota;
    }
    var promedio = acumulador / notas[materia]!.length;
    print('Promedio: $promedio');
  }
}
