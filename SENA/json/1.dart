import 'dart:convert';

void main() {
String jsonString = '{"producto": "Laptop", "precio": 1200.50, "disponible": true}';
  Map<String, dynamic> datos = jsonDecode(jsonString);
  print(datos['producto']);
  print(datos['precio']);
  print(datos['disponible']);
}

