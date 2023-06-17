// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

main() {
  runApp(PerguntaApp());
}

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
    final List<Map<String, Object>> perguntas = [
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

    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['respostas'];

    List<Widget> widgetResposta = respostas.map((t) => Resposta(t, _responder));

    // for (var textoResp in listaQuestionario) {
    //   widgetResposta.add(Resposta(textoResp, (_responder)));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(children: [
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          ...widgetResposta
        ]),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
