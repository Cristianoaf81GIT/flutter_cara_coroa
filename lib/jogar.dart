import 'package:flutter/material.dart';
import 'package:cara_coroa/resultado.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  
  void _exibirResultado(){
    const valores = ["cara","coroa"];
    int index = Random().nextInt(valores.length);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(valorIndex: index)  
      ),  
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
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
