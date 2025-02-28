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
  stdout.write("Ingrese el precio del producto: ");
  String? precio = stdin.readLineSync();
  inventario.add({"nombre": nombre, "precio": precio});
  print("Producto agregado correctamente");
}

void mostrar() {
  print("-----------INVENTARIO---------------");
  for (var i = 0; i < inventario.length; i++) {
    print("#${i+1}. Producto: ${inventario[i]["nombre"]} - Precio: ${inventario[i]["precio"]}");
  }
}

void eliminar() {
  stdout.write("Ingrese el nombre del producto a eliminar: ");
  String? productoInput = stdin.readLineSync();

  int? index;
  for (var i = 0; i < inventario.length; i++) {
    if (inventario[i]["nombre"] == productoInput) {
      index = i;
      break;
    }
  }

  if (index != null) {
    var productoEliminado = inventario.removeAt(index);
    print('Producto eliminado: ${productoEliminado["nombre"]}');
  } else {
    print("Producto no encontrado.");
  }
}
