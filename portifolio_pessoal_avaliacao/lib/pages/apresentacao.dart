import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/Buttons/botaoRotas.dart';
import 'package:portifolio_pessoal_avaliacao/components/Containers/containerAvatar.dart';
import 'package:portifolio_pessoal_avaliacao/components/Containers/containerFormacao.dart';
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
              //Container de apresentação
              ContainerApresentacao(
                imagem: 'assets/fotoPortifolio.png',
                nome: "Letícia Alves Roth",
                idade: "19",
                cidade: "Hortolandia - SP",
                funcao: "Aprendiz Soluções Digitais",
              ),
              SizedBox(height: 30),
              Container(
                width: 380,
                height: 340,
                padding: const EdgeInsets.all(20),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FORMAÇÕES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Formacao(
                              curso: "Desenvolvimento de Sistemas",
                              instituicao: "ETEC de Hortolândia",
                              periodo: "2022 - 2024",
                              status: "Concluído",
                            ),
                            Formacao(
                              curso: "Desenvolvimento de Sistemas",
                              instituicao: "SENAI Roberto Mange",
                              periodo: "2025 - 2026",
                              status: "Cursando",
                            ),
                            Formacao(
                              curso: "Tecnologia da Informação",
                              instituicao: "UNIVESP",
                              periodo: "2025 - 2028",
                              status: "Cursando",
                            ),
                            Formacao(
                              curso: "Curso IoT - Básico",
                              instituicao: "ETEC de Hortolândia",
                              periodo: "2022 - 2022",
                              status: "Concluído",
                            ),
                            Formacao(
                              curso: "Curso de Inglês",
                              instituicao: "Wizard - English School",
                              periodo: "2019 - 2023",
                              status: "Concluído",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              //Botões para as páginas de Projetos e Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonRotas(
                    corBotao: const Color(0xFF690505),
                    corTexto: Colors.white,
                    texto: "Meus projetos",
                    pagina: const Projetos(),
                  ),
                  SizedBox(width: 20),
                  ButtonRotas(
                    corBotao: const Color(0xFF8F2323),
                    corTexto: Colors.white,
                    texto: "Meus links",
                    pagina: Links(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
