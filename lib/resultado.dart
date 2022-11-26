import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final int valorIndex;
  const Resultado({super.key, required this.valorIndex}); 
  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  late int _valIndex;

    @override
    void initState() {
      super.initState();
      _valIndex = widget.valorIndex;
    }


  @override
  Widget build(BuildContext context) {           
    const images = [
      'images/moeda_cara.png',
      'images/moeda_coroa.png'
    ];


    return  Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(images[_valIndex]),
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

