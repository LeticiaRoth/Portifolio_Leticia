import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/Carrossel/carrossel.dart';
import 'package:portifolio_pessoal_avaliacao/components/Containers/containerAgradecimento.dart';
import 'package:portifolio_pessoal_avaliacao/components/NavBar/appBar.dart';
import 'package:portifolio_pessoal_avaliacao/components/SocialMedia/socialmedia.dart';

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(textoNavBar: "Tecnologias e Links"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),

            //Links das redes sociais
            Center(child: SocialMedia()),
            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: Text(
                "TECNOLOGIAS",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 61, 1, 11),
                  letterSpacing: 4,
                ),
              ),
            ),

            // Componente do Carrossel
            Carrossel(),
            SizedBox(height: 80),

            //Componente de Agradecimento
            Agradecimento(
              nome: "Letícia Alves Roth",
              foto: "assets/fotoPortifolio.png",
              agradecimento:
                  "Gostaria de agradecer o privilégio que vem sendo me desenvolver na linguagem Dart, mais especificamente no Flutter. Agradeço também ao SENAI Roberto Mane e ao Professor Vinicius pela ajuda no desenvolvimento",
              titulo: "Agradecimento",
            ),

            //Componente de agradecimento
          ],
        ),
      ),
    );
  }
}
