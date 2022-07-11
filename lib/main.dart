// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = [
    {
      "texto": "Qual é sua cor favorita?",
      "respostas": ["Vermelho", "Preto", "Branco", "Azul"]
    },
    {
      "texto": "Qual é seu clube favorito?",
      "respostas": ["São Paulo", "Palmeiras", "Santos", "Corinthians"]
    },
    {
      "texto": "Qual é seu Animal favorito?",
      "respostas": ["Cahorro", "Gato", "Coelho", "Hamster"]
    },
    {
      "texto": "Qual seu instrutor favorito?",
      "respostas": ["Leonardo", "Wagner", "André", "Bruno"]
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()["respostas"]
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Projeto Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]["texto"].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Center(
                child: Text(
                "Parabéns!",
                style: TextStyle(fontSize: 28),
              )),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
