import 'package:flutter/material.dart';
import 'package:portifolio_pessoal_avaliacao/components/Buttons/botaoInicial.dart';
import 'package:portifolio_pessoal_avaliacao/components/Containers/containerImagem.dart';
import 'package:portifolio_pessoal_avaliacao/components/Titles/bemVindo.dart';
import 'package:portifolio_pessoal_avaliacao/pages/boasVindas.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1E0000),
              Color(0xFF4A0000),
              Color(0xFF7A0000),
              Color(0xFFA11212),
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bemvindo(
              tituloH1: "BEM VINDO(A)!",
              tituloH2: "Veja um pouco mais sobre mim!",
            ),
            SizedBox(height: 30),

            //Foto
            ContainerImagem(
              imagem: 'assets/fotoPortifolio.png',
              textoPrincipal: "LETÍCIA ROTH",
              textoSecundario: "Aprendiz Soluções Digitais",
            ),

            SizedBox(height: 30),

            Button(
              corBotao: Color(0xFFDE9393),
              corTexto: Color(0xFF2C0303),
              texto: "Entrar",
              pagina: Boasvindas(),
            ),
          ],
        ),
      ),
    );
  }
}
