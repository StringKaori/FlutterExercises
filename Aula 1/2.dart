// 2. Escreva um programa em Dart para criar uma classe House com as
// propriedades [id, nome, preço]. Crie um construtor para ela e crie 3 objetos.
// Adicione-os a uma lista e imprima todos os detalhes.

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  @override
  String toString() {
    return "ID: ${id}\nNome: ${name}\nRam: ${price}";
  }
}

void main() {
  List<House> houses = [
    House(1, "Dell abc123", 200000.00),
    House(2, "Alienware mtCaro", 2000000.00),
    House(3, "Thinkpad", 77777.00),
  ];

  for(var house in houses) {
    print("${house.toString()}\n");
  }
}