import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter
import 'package:unc_flutter_pokedex/models/MoveScreenData.dart'; // Importando o model "MoveScreenData.dart" da pasta "models"

import 'package:unc_flutter_pokedex/widgets_move/move_card_background.dart'; // importando os widgets
import 'package:unc_flutter_pokedex/widgets_move/move_card_data.dart';       // da pasta "widgets_type"

class MoveCard extends StatelessWidget { // Iniciando um StatelessWidget e buscando as variáveis necessárias
  final int id;
  final String name;

  const MoveCard({ 
    Key? key,
    required this.id,
    required this.name,    
  }) : super(key: key);

  BoxDecoration getContainerDecoration() => BoxDecoration( // Definindo o formato de cada card que será mostrado
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: Colors.grey.withOpacity(0.24),
      width: 1
    ) 
  );

  @override
  Widget build(BuildContext context) { // Criando Widget para definição de layout dos cards
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => (
          Navigator.pushNamed(
            context,
            "/details",
            arguments: MoveScreenData(id, name),
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              MoveCardBackground(id: id),
              MoveCardData(name: name),
            ],
          ),
        ),
      ),
    );
  }
}