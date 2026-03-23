import 'package:flutter/material.dart';

class ContainerApresentacao extends StatelessWidget {
  final String imagem;
  final String nome;
  final String idade;
  final String cidade;
  final String funcao;

  const ContainerApresentacao({
    super.key,
    required this.imagem,
    required this.nome,
    required this.idade,
    required this.cidade,
    required this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 310,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 130,
            child: Container(
              width: 380,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                border: Border.all(
                  color: Color.fromARGB(255, 73, 7, 7),
                  width: 3,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nome.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text("$idade anos", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          cidade,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 133, 69, 69),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "| $funcao",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Foto - Avatar
          Positioned(
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 4, 4),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 95,
                backgroundColor: const Color.fromARGB(255, 73, 7, 7),
                backgroundImage: AssetImage(imagem),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
