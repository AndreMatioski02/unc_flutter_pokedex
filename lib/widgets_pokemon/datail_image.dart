import 'package:flutter/material.dart';

class DatailImage extends StatelessWidget {
  final String image;
  const DatailImage({ 
    Key? key,
    required this.image  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 500
      ),
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white60,
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