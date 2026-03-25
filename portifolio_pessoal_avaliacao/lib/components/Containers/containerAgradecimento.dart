import 'package:flutter/material.dart';

class Agradecimento extends StatelessWidget {
  String foto;
  String nome;
  String agradecimento;
  String titulo;

  Agradecimento({
    super.key,
    required this.nome,
    required this.foto,
    required this.agradecimento,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: const Color(0xFF8F2323),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(radius: 60, backgroundImage: AssetImage(foto)),
              SizedBox(height: 10),
              Text(nome, style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),

          SizedBox(width: 20),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo.toUpperCase(),
                  style: TextStyle(
                    color: const Color.fromARGB(255, 243, 192, 192),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  agradecimento,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
