import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia({super.key});

  // Função da URl
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      //Verificação em caso de erro
      throw Exception('Não foi possível abrir $url, tente novamente!');
    }
  }

  //Links das redes sociais
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 56, 7, 7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 100, 41, 41).withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
      ),
      //Icones
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _socialImage('assets/github.png', 'https://github.com/LeticiaRoth'),
          _socialImage(
            'assets/linkedin.png',
            'https://www.linkedin.com/in/let%C3%ADcia-alves-roth-710242327/',
          ),
          _socialImage(
            'assets/figma.png',
            'https://www.figma.com/files/team/1491835138766914437/all-projects?fuid=1110610393015573793',
          ),
        ],
      ),
    );
  }

  Widget _socialImage(String path, String url) {
    return InkWell(
      onTap: () => _launchURL(url),
      borderRadius: BorderRadius.circular(78),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          path,
          width: 70,
          height: 60,
          fit: BoxFit.contain,
          //Em caso de erro na imagem, ficará com o icone broken_image
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.broken_image,
            size: 60,
            color: Color.fromARGB(255, 211, 167, 167),
          ),
        ),
      ),
    );
  }
}
