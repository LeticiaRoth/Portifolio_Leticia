import 'package:flutter/material.dart';

class CardProjeto extends StatelessWidget {
  String imagem;
  String nome;
  String colaboradores;
  String descricao;
  Color corFundo;

  CardProjeto({
    super.key,
    required this.imagem,
    required this.nome,
    required this.colaboradores,
    required this.descricao,
    required this.corFundo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 61, 1, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: corFundo,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagem,
                height: 110,
                width: 110,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.broken_image,
                  size: 60,
                  color: Colors.white70,
                ),
              ),
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
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  colaboradores,
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color.fromARGB(246, 255, 201, 201),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  descricao,
                  softWrap: true,
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
