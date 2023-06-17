import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 21, 35, 43),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
