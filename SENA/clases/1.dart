class Coche {
  String marca;
  String modelo;
  int ano;

  Coche(this.marca, this.modelo, this.ano);
  void mostrarDetalles() {
    print("Coche: $marca $modelo, Año: $ano");
  }
}

void main() {
  Coche miCoche = Coche("Toyota", "Corolla", 2020);
  miCoche.mostrarDetalles();
}
