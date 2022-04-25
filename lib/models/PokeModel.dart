class Pokemon { // Criação da classe "Pokemon" e definindo seus atributos
  int id;
  String name;
  String img;

  Pokemon.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        img = data['img'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}
