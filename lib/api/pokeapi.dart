import 'dart:async';
import 'package:http/http.dart' as http;

class PokeAPI { // Criação da classe para buscar dados utilizando a PokeAPI
  static Future<http.Response> getPokemon() => // Criação da função para recuperar dados dos pokemons, com limitação de 250
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=250"));
  
  static Future<http.Response> getType() => // Criação da função para recuperar dados dos tipos de pokemons
    http.get(Uri.parse("https://pokeapi.co/api/v2/type"));

  static Future<http.Response> getAbility() => // Criação da função para recuperar dados das habilidades dos pokemons
    http.get(Uri.parse("https://pokeapi.co/api/v2/ability"));

  static Future<http.Response> getMove() => // Criação da função para recuperar dados dos movimentos realizados pelos pokemons
    http.get(Uri.parse("https://pokeapi.co/api/v2/move"));

  static Future<http.Response> getItem() => // Criação da função para recuperar dados dos itens dos pokemons
    http.get(Uri.parse("https://pokeapi.co/api/v2/item"));
}