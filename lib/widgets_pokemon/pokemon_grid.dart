import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/pokemon_card.dart';

class PokemonGrid extends StatefulWidget {
  // Criando a listagem que irá receber os Pokemons
  final List<Pokemon> pokemon;
  const PokemonGrid({ 
    Key? key,
    required this.pokemon
  }) : super(key: key);

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}
// Iniciando um componente Front-End
class _PokemonGridState extends State<PokemonGrid> {
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


    return GridView.count( // Definindo o layout do Grid
      padding: const EdgeInsets.all(7),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.pokemon
        .map(
          (pokemon) => PokemonCard(
            id: pokemon.id,
            name: pokemon.name,
            image: pokemon.img,
          ),
        )
        .toList(),
    );
  }
}
