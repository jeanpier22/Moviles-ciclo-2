import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {

  final Color color;
  final String texto;
  final IconData icono;

const Pantalla2({
  super.key,
  required this.color,
  required this.texto,
  required this.icono,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              texto,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
