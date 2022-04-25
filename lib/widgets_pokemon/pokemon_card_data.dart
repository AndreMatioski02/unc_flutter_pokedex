import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class PokemonCardData extends StatelessWidget { // Iniciando um StatelessWidget para os dados contidos em cada card
  final String name;
  final String image;

  const PokemonCardData({ 
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criação do Widget
    return Column(
      children: [ // Definindo como será o layout da imagem do pokemon dentro do card
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
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