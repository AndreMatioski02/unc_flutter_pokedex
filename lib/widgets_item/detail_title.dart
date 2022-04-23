import 'package:flutter/material.dart';

class DatailTitle extends StatelessWidget {
  final int id;
  final String name;
  const DatailTitle({ 
    Key? key,
    required this.id,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          fontSize: 24,
          color: Colors.blue
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