import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  final String curso;
  final String instituicao;
  final String periodo;
  final String status;

  const Formacao({
    super.key,
    required this.curso,
    required this.instituicao,
    required this.periodo,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            curso.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "$instituicao • $periodo",
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 13,
            ),
          ),
          Text(
            status,
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 11,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 8),
          Divider(color: Colors.white24, thickness: 0.5),
        ],
      ),
    );
  }
}