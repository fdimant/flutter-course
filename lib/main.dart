// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'resultado.dart';
import 'questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _totalPoints = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': [
        {'texto': 'preto', 'points': 1},
        {'texto': 'verde', 'points': 2},
        {'texto': 'amarelo', 'points': 3},
        {'texto': 'azul', 'points': 4},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito ?',
      'respostas': [
        {'texto': 'cachorro', 'points': 2},
        {'texto': 'gato', 'points': 4},
        {'texto': 'cobra', 'points': 5},
        {'texto': 'coelho', 'points': 6},
      ],
    },
    {
      'texto': 'Qual é seu time favorito ?',
      'respostas': [
        {'texto': 'São Paulo', 'points': 3},
        {'texto': 'Palmeiras', 'points': 5},
        {'texto': 'Santos', 'points': 7},
        {'texto': 'Corinthias', 'points': 8},
      ],
    }
  ];

  void _responder(int points) {
    setState(() {
      _perguntaSelecionada++;
      _totalPoints += points;
    });
  }

  void _restartForm() {
    setState(() {
      _perguntaSelecionada = 0;
      _totalPoints = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_totalPoints, _restartForm),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
