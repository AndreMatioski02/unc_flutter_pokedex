import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets_item/item_card.dart';

class ItemGrid extends StatefulWidget {
  // Criando a listagem que irá receber os Items
  final List<Item> item;
  const ItemGrid({ 
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ItemGrid> createState() => _ItemGridState();
}
// Iniciando um componente Front-End
class _ItemGridState extends State<ItemGrid> {
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
      children: widget.item
        .map(
          (item) => ItemCard(
            id: item.id,
            name: item.name
          ),
        )
        .toList(),
    );
  }
}
