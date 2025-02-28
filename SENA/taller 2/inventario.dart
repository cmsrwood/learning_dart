import 'dart:io';

var inventario = [];

void main() {
  while (true) {
    print("--------------MENU------------");
    print("1. Agregar producto");
    print("2. Mostrar productos");
    print("3. Eliminar producto");
    print("4. Salir");
    stdout.write("Ingrese una opción: ");
    String? opcion = stdin.readLineSync();
    if (opcion == "1") {
      agregar();
    } else if (opcion == "2") {
      mostrar();
    } else if (opcion == "3") {
      eliminar();
    } else if (opcion == "4") {
      print("¡Hasta luego!");
      break;
    } else {
      print("Opción no válida");
    }
  }
}

void agregar() {
  stdout.write("Ingrese el nombre del producto: ");
  String? nombre = stdin.readLineSync();
  inventario.add(nombre);
  print("Producto agregado correctamente: $nombre");
}

void mostrar() {
  print("-----------INVENTARIO---------------");
  print(inventario);
}

void eliminar() {
  stdout.write("Ingrese el nombre del producto a eliminar: ");
  String? producto = stdin.readLineSync();
  if (inventario.contains(producto)) {
    inventario.remove(producto);
    print('Producto eliminado: $producto');
  } else {
    print('Error: El producto no existe');
  }
}

