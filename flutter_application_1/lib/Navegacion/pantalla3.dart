import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget{
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    final String nombre = ModalRoute.of(context)?.settings.arguments as String? ?? 'Desconocido';

    return Scaffold(
      appBar: AppBar(title: Text('Pantalla 3 - Resultado'),),
      body: Center(
        child: Column(children: [
          Text('Hola, $nombre', style: TextStyle(fontSize: 24),),
          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context, '/');}, 
            child: Text('Inicio'))
        ],)),
      
        
    );
  }
}