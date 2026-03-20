import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/Carrossel/carrossel.dart';
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
            const SizedBox(height: 50),

            const Center(child: SocialMedia()),

            const Padding(
              padding: EdgeInsets.only(top: 100, bottom: 20),
              child: Text(
                "Tecnologias",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 160, 4, 113),
                ),
              ),
            ),

            // Componente do Carrossel
            const Carrossel(),
          ],
        ),
      ),
    );
  }
}
