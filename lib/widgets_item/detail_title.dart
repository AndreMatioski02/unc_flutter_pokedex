import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class DatailTitle extends StatelessWidget { // Iniciando um StatelessWidget e buscando as variáveis necessárias
  final int id;
  final String name;
  const DatailTitle({ 
    Key? key,
    required this.id,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criação do Widget para exibir o título na página de detalhes
    return Chip(
      backgroundColor: Colors.white,
      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black
        ),
      ),
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}