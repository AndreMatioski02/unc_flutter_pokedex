import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter
import 'package:unc_flutter_pokedex/pokemon_screens/PokemonHome.dart'; // Importando a tela Home de pokemons da pasta "pokemon_screens"
import 'package:unc_flutter_pokedex/pokemon_screens/PokemonDetails.dart'; // Importando a tela Details de pokemons da pasta "pokemon_screens"

void main () {
  // Chamando o APP para execução
  runApp(const App());
}

class App extends StatelessWidget { // Ininciando um StatelessWidget
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criando um Widget para definição de layout padrão do aplicativo
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