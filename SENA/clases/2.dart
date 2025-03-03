class Coche {
  String marca;
  String modelo;
  int ano;
  Coche(this.marca, this.modelo, this.ano);
  Coche.sinANo(this.marca, this.modelo) : ano = 2021;
  void mostrarDetalles() {
    print("Coche: $marca $modelo, Año: $ano");
  }
}

void main() {
  Coche miCoche1 = Coche("Toyota", "Corolla", 2020);
  Coche miCoche2 = Coche.sinANo("Honda", "Civic");
  miCoche1.mostrarDetalles();
  miCoche2.mostrarDetalles();
}
