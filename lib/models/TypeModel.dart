class Type { // Criação da classe "Type" e definindo seus atributos
  int id;
  String name;

  Type.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}