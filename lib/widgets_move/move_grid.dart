import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets_move/move_card.dart';

class MoveGrid extends StatefulWidget {
  // Criando a listagem que irá receber os Moves
  final List<Move> move;
  const MoveGrid({ 
    Key? key,
    required this.move,
  }) : super(key: key);

  @override
  State<MoveGrid> createState() => _MoveGridState();
}
// Iniciando um componente Front-End
class _MoveGridState extends State<MoveGrid> {
  @override
  Widget build(BuildContext context) {
    // Obtendo a largura da tela do dispositivo
    final width = MediaQuery.of(context).size.width;
    // Determinando o número de colunas da grade com base na largura do dispositivo através de IF ternário
    final crossAxisCount = (width > 1000)
      ? 5
      : (width > 700)
        ? 4
        : (width > 450) 
          ? 3
          : 2;


    return GridView.count(
      padding: const EdgeInsets.all(7),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.move
        .map(
          (move) => MoveCard(
            id: move.id,
            name: move.name
          ),
        )
        .toList(),
    );
  }
}
