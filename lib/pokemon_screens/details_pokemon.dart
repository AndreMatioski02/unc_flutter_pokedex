import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/poke_model.dart';

import '../widgets_pokemon/detail_back_button.dart';
import '../widgets_pokemon/detail_data.dart';
import '../widgets_pokemon/detail_title.dart';

class DetailsPokemon extends StatefulWidget {
  const DetailsPokemon({ Key? key }) : super(key: key);

  @override
  State<DetailsPokemon> createState() => _DetailsPokemonState();
}

class _DetailsPokemonState extends State<DetailsPokemon> {
  Pokemon? pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = getPokemonDetailsFromApi("Charmander") as Pokemon?;
  }

  Future<Pokemon> getPokemonDetailsFromApi(pokemonName) async {
    Pokemon data = Pokemon();
    PokeAPI.getPokemonDetails(pokemonName).then((response) {
      data = Pokemon.fromJson(jsonDecode(response.body));
      });
      return data;
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DatailTitle(
              id: pokemon!.id,
              name: pokemon!.name
            ),
            DatailData(),
          ],
        ),
      ),
      floatingActionButton: const DatailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}