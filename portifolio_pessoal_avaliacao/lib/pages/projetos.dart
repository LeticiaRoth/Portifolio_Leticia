import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/Card/cardProjeto.dart';
import 'package:portifolio_pessoal_avaliacao/components/NavBar/appBar.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(textoNavBar: "Projetos"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: [
              CardProjeto(
                imagem: 'assets/fotoPortifolio.png',
                nome: "PROJETO 1",
                colaboradores: "Letícia Roth",
                descricao: "Descrição detalhada do projeto aqui.",
              ),
              SizedBox(height: 20),
              CardProjeto(
                imagem: 'assets/fotoPortifolio.png',
                nome: "PROJETO 2",
                colaboradores: "Letícia Roth",
                descricao: "Descrição detalhada do projeto aqui.",
              ),
              SizedBox(height: 20),
              CardProjeto(
                imagem: 'assets/fotoPortifolio.png',
                nome: "PROJETO 3",
                colaboradores: "Letícia Roth",
                descricao: "Descrição detalhada do projeto aqui.",
              ),
              SizedBox(height: 20),
              CardProjeto(
                imagem: 'assets/fotoPortifolio.png',
                nome: "PROJETO 4",
                colaboradores: "Letícia Roth",
                descricao: "Descrição detalhada do projeto aqui.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
