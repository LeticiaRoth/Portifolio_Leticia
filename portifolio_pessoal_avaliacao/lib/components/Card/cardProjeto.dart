import 'package:flutter/material.dart';

class CardProjeto extends StatelessWidget {
  final String imagem;
  final String nome;
  final String colaboradores;
  final String descricao;

  const CardProjeto({
    super.key,
    required this.imagem,
    required this.nome,
    required this.colaboradores,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(13),
      decoration: const BoxDecoration(
        color: Color(0xFF8F2323),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagem,
              height: 140,
              width: 130,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  colaboradores,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(221, 255, 217, 217),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  descricao,
                  softWrap: true, 
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(221, 255, 255, 255),
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