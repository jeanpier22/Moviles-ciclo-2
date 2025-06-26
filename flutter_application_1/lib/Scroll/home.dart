import 'package:flutter/material.dart';
import './pantalla1.dart';
import './pantalla2.dart';

class PantallasDeslizables extends StatelessWidget {
  PantallasDeslizables({super.key});

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          Pantalla(
            color: Colors.blue,
            texto: 'Pantalla 1',
            icono: Icons.home,
          ),
          Pantalla2(
            color: Colors.green,
            texto: 'Pantalla 2',
            icono: Icons.star,
          ),
          Pantalla2(
            color: Colors.orange,
            texto: 'Pantalla 3',
            icono: Icons.settings,
          ),
        ],
      ),
    );
  }
}

