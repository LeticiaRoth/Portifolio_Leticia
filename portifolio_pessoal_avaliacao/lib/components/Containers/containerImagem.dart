import 'package:flutter/material.dart';

class ContainerImagem extends StatelessWidget {
  final String imagem;
  final String textoPrincipal;
  final String textoSecundario;

  const ContainerImagem({
    super.key,
    required this.imagem,
    required this.textoPrincipal,
    required this.textoSecundario,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: 300, 
      height: 400,
      padding: EdgeInsets.all(20), 
      decoration: BoxDecoration(
        color:Color.fromARGB(71, 255, 255, 255), 
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0)
        ), 
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 247, 247).withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
      ),
      

      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), 
            child: Image.asset(
              imagem,
              height: 250, 
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20), 
          Text(
            textoPrincipal.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
            ),
          ),
          SizedBox(height: 7),
          Text(
            textoSecundario,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromARGB(255, 241, 235, 235), 
              fontSize: 15,
              fontWeight: FontWeight.w400,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}