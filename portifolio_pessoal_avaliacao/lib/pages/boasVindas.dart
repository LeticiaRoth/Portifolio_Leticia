import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/Buttons/botaoRotas.dart';
import 'package:portifolio_pessoal_avaliacao/components/Containers/containerApresentacao.dart';
import 'package:portifolio_pessoal_avaliacao/components/NavBar/appBar.dart';
import 'package:portifolio_pessoal_avaliacao/pages/links.dart';
import 'package:portifolio_pessoal_avaliacao/pages/projetos.dart';

class Boasvindas extends StatelessWidget {
  const Boasvindas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(textoNavBar: "Apresentação"),
      body: Center(
        child: SingleChildScrollView( 
          child: Column(
            children: [
              const SizedBox(height: 8), 
              ContainerApresentacao(
                imagem: 'assets/fotoPortifolio.png',
                nome: "Letícia Alves Roth",
                idade: "19",
                cidade: "Hortolandia - SP",
                funcao: "Aprendiz Soluções Digitais",
              ),
              const SizedBox(height: 60), 
              Container(
                width: 380,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFF690505),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonRotas(
                    corBotao: const Color(0xFF690505),
                    corTexto: Colors.white,
                    texto: "Meus projetos",
                    pagina: const Projetos(),
                  ),
                  ButtonRotas(
                    corBotao: const Color(0xFF8F2323),
                    corTexto: Colors.white,
                    texto: "Meus links",
                    pagina: Links(),
                  ),
                ],
              ),
              const SizedBox(height: 20), 
            ],
          ),
        ),
      ),
    );
  }
}