import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_card.dart';

class AbilityGrid extends StatefulWidget {
  // Criando a listagem que irá receber os Abilitys
  final List<Ability> ability;
  const AbilityGrid({ 
    Key? key,
    required this.ability,
  }) : super(key: key);

  @override
  State<AbilityGrid> createState() => _AbilityGridState();
}
// Iniciando um componente Front-End
class _AbilityGridState extends State<AbilityGrid> {
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
      children: widget.ability
        .map(
          (ability) => AbilityCard(
            id: ability.id,
            name: ability.name
          ),
        )
        .toList(),
    );
  }
}
