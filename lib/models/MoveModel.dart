class Move { // Criação da classe "Move" e definindo seus atributos
  int id;
  String name;

  Move.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
