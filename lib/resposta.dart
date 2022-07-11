import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;

  Resposta(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            // ignore: prefer_const_constructors
            textStyle: TextStyle(color: Colors.white)),
        onPressed: quandoSelecionado,
        child: Text(resposta),
      ),
    );
  }
}
