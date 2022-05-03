import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart'; // Importando o model "ItemScreenData" para buscar as váriaveis necessárias

import 'package:unc_flutter_pokedex/widgets_pokemon/detail_back_button.dart'; // Importando Widgets
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_title.dart';       // de details, presentes
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_image.dart';       // na pasta "widgets_pokemon"
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_data.dart';

class Details extends StatelessWidget { // Criando um StatelessWidget, onde atributos serão fixos na tela
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criação do Widget
    final arguments = 
      ModalRoute.of(context)!.settings.arguments as PokemonScreenData;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DatailTitle(
              id: arguments.id,
              name: arguments.name
            ),
            DatailData(),
          ],
        ),
      ),
      floatingActionButton: const DatailBackButton(), // Adicionando o botão de voltar à tela
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}