class Coche {
  String marca;
  String modelo;
  int ano;
  int kilometraje = 0;
  Coche(this.marca, this.modelo, this.ano);
  void mostrarDetalles() {
    print("Coche: $marca $modelo, Año: $ano, Kilometraje: $kilometraje km");
  }

  void viajar(int distancia) {
    kilometraje += distancia;
  }
}

void main() {
  Coche miCoche = Coche("Toyota", "Corolla", 2020);
  miCoche.mostrarDetalles();

  miCoche.viajar(150);
  miCoche.mostrarDetalles();
}
