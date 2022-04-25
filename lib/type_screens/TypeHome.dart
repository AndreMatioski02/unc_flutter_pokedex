import 'dart:convert';

import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter
import 'package:unc_flutter_pokedex/api/pokeapi.dart'; // Importando a pasta "pokeapi" para utilizar das funções presentes nela
import 'package:unc_flutter_pokedex/models/TypeModel.dart'; // Importando o model "TypeModel.dart"
import 'package:unc_flutter_pokedex/widgets_type/type_grid.dart'; // Importando o widget "type_grid.dart"

class Home extends StatefulWidget { // Criando um StatefulWidget, permitindo interação e modificação da tela criada
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> { 
  List<Type> type = List.empty(); // Criando uma lista vazia para armazenamento futuro de dados

  @override
  void initState() {
    super.initState();
    getTypeFromPokeApi(); // Criando herança para buscar informações na API 
  }

  void getTypeFromPokeApi() async { // Criando função para popular a Lista com informações sobre "Type"
    PokeAPI.getType().then((response) { // Chamando a função "getType" da classe "PokeAPI" para buscar os dados
      List<Map<String, dynamic>> data = // Definindo variável "data", onde irá receber os dados da API e fazer a converção para JSON, para que possamos popular a lista
          List.from(json.decode(response.body)['results']);
      setState(() {
        type = data.asMap().entries.map<Type>((element) { // Populando a List "type" através da variável "data"
          element.value['id'] = element.key + 1; // Fazendo a soma do campo "id" + 1, para que não exista "id" com valor 0
          return Type.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) { // Criando o Widget para a página Home
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tipos"), // Titulando a página
      ),
      body: TypeGrid(type: type),
      floatingActionButton: FloatingActionButton( // Adicionando um botão flutuante do tipo "share"
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
