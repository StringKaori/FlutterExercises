// there was no number 3 in the list...

// 4. Escreva um programa em Dart para criar uma classe Animal com as
// propriedades [id, nome, cor]. Crie outra classe chamada Cat e a estenda de
// Animal. Adicione uma nova propriedade chamada som (do tipo String). Crie
// um objeto de Cat e imprima todos os detalhes.

class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);

  @override
  String toString() {
    return "ID: ${id}\nNome: ${name}\nRam: ${color}";
  }
}

class Cat extends Animal {
  String sound;

  Cat(id, name, color, this.sound) : super(id, name, color);
  
  @override
  String toString() {
    return "${super.toString()}\nSom: ${sound}";
  }
}

void main() {
  List<Animal> cats = [
    Cat(1, "EXPLOSÃO GALÁTICA", "roxo", "MIAAAAAAU... FZZZRRRR... KRRRRRRR-BOOM"),
    Cat(2, "Asteroid Destroyer", "gray", "M I A U"),
    Cat(3, "Espinhos Vermelhos Demoníacos", "Vermelho", "MIAU... SSSSSSHHH... FFFSHHHH"),
  ];

  for(var cat in cats) {
    print("${cat.toString()}\n");
  }
}