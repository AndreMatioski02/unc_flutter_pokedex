import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/pokemon_screens/PokemonHome.dart';
import 'package:unc_flutter_pokedex/pokemon_screens/PokemonDetails.dart';

void main () {
  // Chamando o APP para execução
  runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Iniciando o conceito de navegação por rotas
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        // Criando a rota para exibir os detalher do pokémon
        "/details" : (context) => const Details(),
      },
    );
  }
} 