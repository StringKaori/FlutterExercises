// 1. Escreva um programa em Dart para criar uma classe Laptop com as
// propriedades [id, nome, ram] e crie 3 objetos dela, imprimindo todos os
// detalhes.

class Laptop {
  int id;
  String name;
  String ram;

  Laptop(this.id, this.name, this.ram);

  @override
  String toString() {
    return "ID: ${id}\nNome: ${name}\nRam: ${ram}";
  }
}

void main() {
  List<Laptop> laptops = [
    Laptop(1, "Dell abc123", "1x8GB DDR4"),
    Laptop(2, "Alienware mtCaro", "2x8GB DDR5"),
    Laptop(3, "Thinkpad", "2x16GB DDR5"),
  ];

  for(var laptop in laptops) {
    print("${laptop.toString()}\n");
  }
}