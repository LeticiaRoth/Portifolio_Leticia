import 'package:flutter/material.dart';

class ButtonRotas extends StatelessWidget {
  Color corBotao;
  Color corTexto;
  String texto;
  Widget pagina;

  ButtonRotas({
    super.key,
    required this.corBotao,
    required this.corTexto,
    required this.texto,
    required this.pagina,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        //Fixa um tamanho
        fixedSize: const Size(180, 50),

        backgroundColor: corBotao,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagina),
        );
      },
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 16.7,
          color: corTexto,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.9,
        ),
      ),
    );
  }
}
