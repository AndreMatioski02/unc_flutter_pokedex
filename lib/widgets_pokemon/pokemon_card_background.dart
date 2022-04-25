import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class PokemonCardBackground extends StatelessWidget { // Iniciando o StatelessWidget 
  final int id;
  const PokemonCardBackground({ 
    Key? key, 
    required this.id 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criação do Widget de definição do fundo da tela
    return Text(
      "$id",
       style: TextStyle(
         fontSize: 101,
         fontWeight: FontWeight.bold,
         color: Colors.grey[200],
      )
    ); 
  }
}
