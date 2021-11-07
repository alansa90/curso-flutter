printProduct({String? name, double? price}) {
  print('The product ${name} has value ${price}');
}

class Product {
  String? name;
  double? price;

  // Product(String name, double price) {
  //   this.name = name;
  //   this.price = price;
  // }

  Product({this.name, this.price});
}

int sum(int a, int b) {
  return a + b;
}

int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

main() {
  //Por inferencia de tipo
  //var conjunto = { 0, 1, 2, 3, 4, 4, 4, 4, 4 };
  Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4, 4};
  print(conjunto.length);
  print(conjunto is Set);

  final r = sum(2, 3);
  print("The value sum is: $r");
  final r2 = exec(2, 3, (a, b) => a - b);
  print("The result is: $r2!!");

  // var product1 = new Product('Lapís', 4.59);
  var product1 = Product(name: 'Lapís', price: 4.59);
  var product2 = Product(price: 1454.59, name: 'Geladeira');

  // product1.name = 'Lapís';
  // product1.price = 4.59;

  printProduct(name: product1.name, price: product1.price);
  printProduct(price: product2.price, name: product2.name);
}
