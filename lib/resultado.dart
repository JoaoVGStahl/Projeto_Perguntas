import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() paraReiniciarQuestionario;

  Resultado(this.pontuacao, this.paraReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 9) {
      return "Parabéns!";
    } else if (pontuacao < 25) {
      return "Você é bom!";
    } else if (pontuacao < 39) {
      return "Impressionate!";
    } else {
      return "Esculachou!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: const TextStyle(fontSize: 28, color: Colors.blue),
        )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                textStyle: const TextStyle(color: Colors.white)),
            onPressed: paraReiniciarQuestionario,
            child: const Text("Reiniciar"))
      ],
    );
  }
}
