import 'dart:convert';

void main() {
  Map<String, dynamic> datos = {'Titulo': 'Libro', 'Autor': 'Luis', 'Ano': 2025};
  String jsonString = jsonEncode(datos);
  print(jsonString);
}
