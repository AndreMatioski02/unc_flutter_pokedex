class Ability { // Criação da classe "Ability" e definindo seus atributos
  int id;
  String name;

  Ability.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
