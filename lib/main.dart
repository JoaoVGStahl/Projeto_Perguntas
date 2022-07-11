// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é sua cor favorita?',
      'Qual é seu clube favorito?',
      'Qual é seu filme favorito?',
      'Qual é seu hoobie favorito?',
      'Qual é seu lugar favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Projeto Perguntas"),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta("Resposta 1"),
            Resposta("Resposta 2"),
            Resposta("Resposta 3"),
            Resposta("Resposta 4"),
          ],
        ),
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
