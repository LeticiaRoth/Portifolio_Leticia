import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  String textoNavBar;

  Appbar({super.key, required this.textoNavBar});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color(0xFF4B0404),
      title: Text(
        textoNavBar,
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          letterSpacing: 2,
          fontWeight: FontWeight.w400,
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
