import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets_type/type_card.dart';

class TypeGrid extends StatefulWidget {
  // Criando a listagem que irá receber os Types
  final List<Type> type;
  const TypeGrid({ 
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  State<TypeGrid> createState() => _TypeGridState();
}
// Iniciando um componente Front-End
class _TypeGridState extends State<TypeGrid> {
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
      children: widget.type
        .map(
          (type) => TypeCard(
            id: type.id,
            name: type.name
          ),
        )
        .toList(),
    );
  }
}
