import 'dart:math';

import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = [
      "cara",
      "coroa"
    ];

    var numero = Random().nextInt(2);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF61bd86),
      // backgroundColor: const Color(0xFFFFcc80),
      // backgroundColor: const Color.fromRGBO(255, 204, 128, 4),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
