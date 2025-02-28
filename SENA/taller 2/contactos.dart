import 'dart:io';

var contactos = [
  {"nombre": "Dilan", "telefono": 3138975212},
  {"nombre": "Andrea", "telefono": 3138975213},
  {"nombre": "Luis", "telefono": 3138975214},
  {"nombre": "Sofia", "telefono": 3138975215},
];

void main() {
  while (true) {
    print("\n--------------MENU------------");
    print("1. Insertar contacto");
    print("2. Buscar contactos");
    print("3. Modificar contacto");
    print("4. Borrar contacto");
    print("5. Salir");
    stdout.write("Ingrese una opción: ");
    String? menu = stdin.readLineSync();
    if (menu == "1") {
      insertar();
    } else if (menu == "2") {
      buscar();
    } else if (menu == "3") {
      modificar();
    } else if (menu == "4") {
      borrar();
    } else if (menu == "5") {
      print("¡Hasta luego!");
      break;
    } else {
      print("Opción no válida");
    }
  }
}

void insertar() {
  stdout.write("Ingrese el nombre del contacto: ");
  String nombre = stdin.readLineSync()!;
  stdout.write("Ingrese el teléfono del contacto: ");
  int telefono = int.parse(stdin.readLineSync()!);
  contactos.add({"nombre": nombre, "telefono": telefono});
  print("Contacto agregado correctamente");
}

void buscar() {
  print("\n--------------BUSCAR CONTACTO------------");
  stdout.write(
    "¿Como desea buscar?\n1. Por nombre\n2. Por teléfono\nOpción: ",
  );
  String? opcion = stdin.readLineSync();

  if (opcion == "1") {
    stdout.write("Ingrese el nombre del contacto a buscar: ");
    String? nombreInput = stdin.readLineSync();
    for (var contacto in contactos) {
      if (contacto["nombre"] == nombreInput) {
        print("\nContacto encontrado:");
        print("Nombre: ${contacto["nombre"]}");
        print("Teléfono: ${contacto["telefono"]}\n");
        return;
      }
    }
  } else if (opcion == "2") {
    print("\n--------------BUSCAR CONTACTO------------");
    stdout.write("Ingrese el teléfono del contacto a buscar: ");
    int telefonoInput = int.parse(stdin.readLineSync()!);
    for (var contacto in contactos) {
      if (contacto["telefono"] == telefonoInput) {
        print("\nContacto encontrado:");
        print("Nombre: ${contacto["nombre"]}");
        print("Teléfono: ${contacto["telefono"]}\n");
        return;
      }
    }
  }
}

void modificar() {
  print("\n--------------MODIFICAR CONTACTO------------");
  stdout.write("Ingrese el nombre del contacto a modificar: ");
  String? nombreInput = stdin.readLineSync();

  for (var contacto in contactos) {
    if (contacto["nombre"] == nombreInput) {
      stdout.write(
        "\n¿Qué desea modificar?\n1. Nombre\n2. Teléfono\nOpción: ",
      );
      String? opcion = stdin.readLineSync();
      if (opcion == "1") {
        stdout.write("Ingrese el nuevo nombre del contacto: ");
        String nuevoNombre = stdin.readLineSync()!;
        contacto["nombre"] = nuevoNombre;
        print("Contacto modificado correctamente");
        return;
      } else if (opcion == "2") {
        stdout.write("Ingrese el nuevo teléfono del contacto: ");
        int nuevoTelefono = int.parse(stdin.readLineSync()!);
        contacto["telefono"] = nuevoTelefono;
        print("Contacto modificado correctamente");
        return;
      } else {
        print("Opción no válida");
      }
    }
  }
}

void borrar() {
  print("\n--------------BORRAR CONTACTO------------");
  stdout.write(
    "¿Como desea eliminar el contacto?\n1. Por nombre\n2. Por teléfono\nOpción: ",
  );
  String? opcion = stdin.readLineSync();
  if (opcion == "1") {
    stdout.write("Ingrese el nombre del contacto a eliminar: ");
    String? nombreInput = stdin.readLineSync();
    for (var contacto in contactos) {
      if (contacto["nombre"] == nombreInput) {
        contactos.remove(contacto);
        print('\nContacto eliminado: ${contacto["nombre"]}');
        return;
      }
    }
  } else if (opcion == "2") {
    stdout.write("Ingrese el teléfono del contacto a eliminar: ");
    int telefonoInput = int.parse(stdin.readLineSync()!);
    for (var contacto in contactos) {
      if (contacto["telefono"] == telefonoInput) {
        contactos.remove(contacto);
        print('\nContacto eliminado: ${contacto["nombre"]}');
        return;
      }
    }
  } else {
    print("\nContacto no encontrado.");
  }
}
