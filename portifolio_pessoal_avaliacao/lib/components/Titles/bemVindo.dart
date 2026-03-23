import 'package:flutter/material.dart';

class Bemvindo extends StatelessWidget {
  //Declaração variaveis
  String tituloH1;
  String tituloH2;

  Bemvindo({super.key, required this.tituloH1, required this.tituloH2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          tituloH1,
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        SizedBox(height: 3),
        Text(
          tituloH2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
