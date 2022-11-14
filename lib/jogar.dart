import 'package:flutter/material.dart';


class Jogar extends StatefulWidget {
  
  const Jogar({super.key});

  @override 
  State<Jogar> createState() => _JogarState();
}


class _JogarState extends State<Jogar> {
 
  void _exibirResultado() {
    
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff99ff99),
      // backgroundColor: const Color.fromRGBO(204,255,204,1),
      backgroundColor: const Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png") 
            ),
          ],  
        ),  
      ), 
     );
  }
}
