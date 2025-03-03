import 'dart:io';

class CuentaBancaria {
  String nombre;
  int documento;
  int numeroDeCuenta;
  double saldo = 50000;

  CuentaBancaria(this.nombre, this.documento, this.numeroDeCuenta, this.saldo);

  void consignar() {
    stdout.write("Ingrese la cantidad a consignar: ");
    double cantidad = double.parse(stdin.readLineSync()!);
    while (cantidad <= 0) {
      print("La cantidad debe ser mayor a 0");
      stdout.write("Ingrese la cantidad a consignar: ");
      cantidad = double.parse(stdin.readLineSync()!);
    }
    saldo += cantidad;
  }

  void retirar() {
    stdout.write("Ingrese la cantidad a retirar: ");
    double cantidad = double.parse(stdin.readLineSync()!);
    while (cantidad <= 0) {
      print("La cantidad debe ser mayor a 0");
      stdout.write("Ingrese la cantidad a retirar: ");
      cantidad = double.parse(stdin.readLineSync()!);
    }
    while (cantidad > saldo) {
      print("El saldo es insuficiente");
      stdout.write("Ingrese la cantidad a retirar: ");
      cantidad = double.parse(stdin.readLineSync()!);
    }
    saldo -= cantidad;
  }

  void mostrarDetalles() {
    print("\n--------------DETALLES DE LA CUENTA------------");
    print(
      "Nombre: $nombre\nDocumento: $documento\nNumero de cuenta: $numeroDeCuenta\nSaldo: $saldo",
    );
  }
}

void menu (cuenta) {
  while (true) {
    print("--------------MENU------------");
    print("1. Consignar dinero");
    print("2. Retirar dinero");
    print("3. Mostrar detalles de la cuenta");
    print("4. Salir");
    stdout.write("Ingrese una opción: ");
    String? opcion = stdin.readLineSync();
    if (opcion == "1") {
      cuenta.consignar();
    } else if (opcion == "2") {
      cuenta.retirar();
    } else if (opcion == "3") {
      cuenta.mostrarDetalles();
    } else if (opcion == "4") {
      print("¡Hasta luego! Gracias por usar nuestros servicios");
      break;
    } else {
      print("Opción no válida");
    }
  }
}
void main() {
  CuentaBancaria cuenta1 = CuentaBancaria("Dilan", 12345678, 123456789, 50000.0);
  menu(cuenta1);
}
