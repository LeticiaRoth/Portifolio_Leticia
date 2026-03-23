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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Alguns projetos que pude trabalhar durante minha carreira dentro da tecnologia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
              ),
              CardProjeto(
                imagem: 'assets/projetos/sensedu.png',
                nome: "SensEDU",
                colaboradores: "Letícia Roth",
                descricao:
                    "Projeto de monitoramento de sensores espalhados pelo SENAI Roberto Mange.",
                corFundo: const Color.fromARGB(255, 2, 51, 9),
              ),
              SizedBox(height: 20),
              CardProjeto(
                imagem: 'assets/projetos/rexautomate.png',
                nome: "REXAutomate",
                colaboradores: "Letícia & Layslla ",
                descricao: "Projeto de área para unidade Rexroth da Argentina.",
                corFundo: const Color.fromARGB(255, 1, 11, 54),
              ),
              SizedBox(height: 20),
              CardProjeto(
                imagem: 'assets/projetos/cora.png',
                nome: "CORA",
                colaboradores: "André, João e Ketlyn",
                descricao:
                    "Projeto de monitoramento de cartões corporativos da Bosch Campinas.",
                corFundo: const Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(height: 20),
              CardProjeto(
                imagem: 'assets/projetos/facetec.png',
                nome: "FACETEC",
                colaboradores: "Thiago, Gabriel e Nathan",
                descricao:
                    "Projeto de monitoramento de frequencia através de reconhecimento facial para ETEC de Hortolândia.",
                corFundo: const Color.fromARGB(255, 233, 245, 253),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
