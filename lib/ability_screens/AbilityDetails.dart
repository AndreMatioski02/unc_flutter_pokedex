import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityScreenData.dart';
import 'package:unc_flutter_pokedex/widgets_ability/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets_ability/detail_title.dart';
import 'package:unc_flutter_pokedex/widgets_ability/detail_data.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = 
      ModalRoute.of(context)!.settings.arguments as AbilityScreenData;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
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