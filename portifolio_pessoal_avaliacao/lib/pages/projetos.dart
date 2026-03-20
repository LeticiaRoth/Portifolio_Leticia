import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/NavBar/appBar.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(textoNavBar: "Projetos"),
    );
  }
}