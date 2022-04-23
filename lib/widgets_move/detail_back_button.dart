import 'package:flutter/material.dart';

class DatailBackButton extends StatelessWidget {
  const DatailBackButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pop(context),
      tooltip: "Voltar",
      label: const Text(
        "Voltar"
      ),
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded
      ),
    );
  }
}