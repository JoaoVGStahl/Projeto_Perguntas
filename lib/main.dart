// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      "texto": "Qual é sua cor favorita?",
      "respostas": [
        {"texto": "Vermelho", "pontuacao": 10},
        {"texto": "Preto", "pontuacao": 7},
        {"texto": "Branco", "pontuacao": 5},
        {"texto": "Azul", "pontuacao": 2}
      ]
    },
    {
      "texto": "Qual é seu clube favorito?",
      "respostas": [
        {"texto": "São Paulo", "pontuacao": 10},
        {"texto": "Palmeiras", "pontuacao": 7},
        {"texto": "Santos", "pontuacao": 5},
        {"texto": "Corinthians", "pontuacao": 2},
      ]
    },
    {
      "texto": "Qual é seu Animal favorito?",
      "respostas": [
        {"texto": "Cahorro", "pontuacao": 10},
        {"texto": "Gato", "pontuacao": 7},
        {"texto": "Coelho", "pontuacao": 5},
        {"texto": "Hamster", "pontuacao": 2},
      ]
    },
    {
      "texto": "Qual seu instrutor favorito?",
      "respostas": [
        {"texto": "Leonardo", "pontuacao": 10},
        {"texto": "Wagner", "pontuacao": 7},
        {"texto": "André", "pontuacao": 5},
        {"texto": "Bruno", "pontuacao": 2},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _pontuacaoTotal += pontuacao;
        _perguntaSelecionada++;
      });
    }

    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Projeto Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(),
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
