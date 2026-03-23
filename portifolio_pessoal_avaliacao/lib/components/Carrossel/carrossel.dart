import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//State do carrossel
class Carrossel extends StatefulWidget {
  const Carrossel({super.key});
  @override
  State<Carrossel> createState() => _CarrosselRowState();
}

class _CarrosselRowState extends State<Carrossel> {
  final PageController _controller = PageController(viewportFraction: 0.66);
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 0.0;
      });
    });
  }

  //Imagens do Carrosel
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/figma.png',
      'assets/django.png',
      'assets/fastapi.png',
      'assets/git.png',
      'assets/html.png',
      'assets/java.png',
      'assets/mysql.png',
      'assets/postgresql.png',
      'assets/react.png',
      'assets/selenium.png',
    ];

    return SizedBox(
      height: 200,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
        ),
        child: PageView.builder(
          controller: _controller,
          itemCount: images.length,
          itemBuilder: (context, index) {
            double scale = (1 - (_currentPage - index).abs() * 0.35).clamp(
              0.8,
              1.0,
            );

            //Decoração das tecnologias
            return Center(
              child: Transform.scale(
                scale: scale,
                child: Container(
                  width: 190,
                  height: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 198, 198),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 73, 7, 7),
                      width: 4,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.computer, color: Colors.white, size: 70),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
