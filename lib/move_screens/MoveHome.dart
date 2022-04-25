import 'dart:convert';

import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter
import 'package:unc_flutter_pokedex/api/pokeapi.dart'; // Importando a pasta "pokeapi" para utilizar das funções presentes nela
import 'package:unc_flutter_pokedex/models/MoveModel.dart'; // Importando o model "MoveModel.dart" 
import 'package:unc_flutter_pokedex/widgets_move/move_grid.dart'; // Importando o widget "move_grid.dart"

class Home extends StatefulWidget { // Criando um StatefulWidget, permitindo interação e modificação da tela criada
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Move> move = List.empty(); // Criando uma lista vazia para armazenamento futuro de dados

  @override
  void initState() {
    super.initState();
    getMoveFromPokeApi(); // Criando herança para buscar informações na API 
  }

  void getMoveFromPokeApi() async { // Criando função para popular a Lista com informações sobre "Move"
    PokeAPI.getMove().then((response) { // Chamando a função "getMove" da classe "PokeAPI" para buscar os dados
      List<Map<String, dynamic>> data = // Definindo variável "data", onde irá receber os dados da API e fazer a converção para JSON, para que possamos popular a lista
          List.from(json.decode(response.body)['results']);
      setState(() {
        move = data.asMap().entries.map<Move>((element) { // Populando a List "move" através da variável "data"
          element.value['id'] = element.key + 1; // Fazendo a soma do campo "id" + 1, para que não exista "id" com valor 0
          return Move.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) { // Criando o Widget para a página Home
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movimentos"), // Titulando a página
      ),
      body: MoveGrid(move: move),
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
