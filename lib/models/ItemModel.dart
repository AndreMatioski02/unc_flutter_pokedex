class Item { // Criação da classe "Item" e definindo seus atributos
  int id;
  String name;

  Item.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}