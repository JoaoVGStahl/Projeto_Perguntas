import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  // ignore: prefer_const_constructors_in_immutables
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
