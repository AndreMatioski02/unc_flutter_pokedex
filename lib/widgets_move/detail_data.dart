import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class DatailData extends StatelessWidget { // Ininciando um StatelessWidget
  const DatailData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Definindo um Widget para os dados a serem exibidos na página de detalhes
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
      ),
      child: Column(
        children: []
      ),
    );
  }
}