import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_move/move_card_background.dart';
import 'package:unc_flutter_pokedex/widgets_move/move_card_data.dart';

class MoveCard extends StatelessWidget {
  final int id;
  final String name;

  const MoveCard({ 
    Key? key,
    required this.id,
    required this.name,    
  }) : super(key: key);

  BoxDecoration getContainerDecoration() => BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: Colors.grey.withOpacity(0.24),
      width: 1
    ) 
  );

  @override
  Widget build(BuildContext context) {
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