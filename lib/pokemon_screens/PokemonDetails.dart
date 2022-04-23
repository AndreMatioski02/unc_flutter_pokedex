import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/datail_title.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/datail_image.dart';
import 'package:unc_flutter_pokedex/widgets_pokemon/datail_data.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = 
      ModalRoute.of(context)!.settings.arguments as PokemonScreenData;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DatailImage(
              image: arguments.image,
            ),
            DatailTitle(
              id: arguments.id,
              name: arguments.name
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