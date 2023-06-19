// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'resultado.dart';
import 'questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'respostas': ['preto', 'verde', 'amarelo', 'azul'],
    },
    {
      'texto': 'Qual é seu animal favorito ?',
      'respostas': ['cachorro', 'gato', 'cobra', 'coelho'],
    },
    {
      'texto': 'Qual é seu time favorito ?',
      'respostas': ['São Paulo', 'Palmeiras', 'Santos', 'Corinthias'],
    }
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
