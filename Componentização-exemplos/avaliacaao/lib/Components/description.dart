import 'package:flutter/material.dart';

class Description extends StatelessWidget {

  String descricao;

  Description({super.key, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Text(
      descricao, 
      style: TextStyle(
        fontSize: 30,
        color: Colors.pink,
      ),
    );
  }
}