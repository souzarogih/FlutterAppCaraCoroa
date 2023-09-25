import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;
  Resultado(this.valor, {super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    String caminhoImagem;
    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xFF61bd86),
      // backgroundColor: const Color(0xFFFFcc80),
      // backgroundColor: const Color.fromRGBO(255, 204, 128, 4),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
