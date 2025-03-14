// there wasn't a 3, so the 4th became the 3rd and the 5th will be the 4th

// 5. Escreva um programa em Dart para criar uma classe Camera com
// propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter
// para acessar e modificar os valores. Além disso, crie 3 objetos dela e
// imprima todos os detalhes.

class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  @override
  String toString() {
    return "ID: ${_id}\nMarca: ${_brand}\nCor: ${_color}\nPreço: ${_price}";
  }

  // getters and setters
  int get id => _id;

  set id(int newId) {
    _id = newId;
  }

  String get brand => _brand;

  set brand(String newBrand) {
    _brand = newBrand;
  }

  String get color => _color;

  set color(String newColor) {
    _color = newColor;
  }

  double get price => _price;

  set price(double newPrice) {
    _price = newPrice;
  }
}

void main() {
  List<Camera> cameras = [
    Camera(1, "Sony", "Preto", 3000),
    Camera(2, "Canon", "Preto", 3200),
    Camera(3, "Nikon", "Preto", 2900),
  ];

  for(var camera in cameras) {
    print("${camera.toString()}\n");
  }
}