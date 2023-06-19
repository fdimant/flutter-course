import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPressed;

  Resposta(this.texto, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 18),
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 233, 133, 20),
        ),
        onPressed: onPressed,
        child: Text(
          texto,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
