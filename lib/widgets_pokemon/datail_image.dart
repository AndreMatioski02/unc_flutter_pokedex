import 'package:flutter/material.dart'; // Importação da biblioteca "Material", auxílio em desenvlvimento flutter

class DatailImage extends StatelessWidget { // Iniciando um StatelessWidget e buscando as variáveis necessárias
  final String image;
  const DatailImage({ 
    Key? key,
    required this.image  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Criação de um Widget para a exibição da imagem na página de detalhes
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 500
      ),
      color: Colors.lightBlueAccent,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          Image.network(
            image,
            fit: BoxFit.contain,
            alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}