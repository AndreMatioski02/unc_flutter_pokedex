import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class MoveCardData extends StatelessWidget { // Iniciando um StatelessWidget para os dados contidos em cada card
  final String name;

  const MoveCardData({ 
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criação do Widget
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Divider(),
        Text( // Definindo o layout para o Texto contido no card
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 21,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}