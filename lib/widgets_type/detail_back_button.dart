import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class DatailBackButton extends StatelessWidget { // Iniciando um StatelessWidget
  const DatailBackButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criando o Widget para adicionar o botão de voltar à pagina de detalhes
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