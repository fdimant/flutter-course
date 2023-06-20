import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int totalPoints;
  final void Function() restartForm;

  Resultado(this.totalPoints, this.restartForm);

  String get fraseResultado {
    String texto1 = ' você fez $totalPoints pontos';
    if (totalPoints < 8) {
      return 'Parabéns  $texto1';
    } else if (totalPoints < 12) {
      return 'Muito bem !!! $texto1';
    } else {
      return 'Sensacional $texto1';
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
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        TextButton(
          onPressed: restartForm,
          child: const Text('Iniciar'),
        )
      ],
    );
  }
}
