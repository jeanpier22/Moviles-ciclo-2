import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget{
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    final List datos = ModalRoute.of(context)?.settings.arguments as List? ?? ['Desconocido', '0'];
    final String nombre = datos[0];
    final String edad = datos[1];


    return Scaffold(
      appBar: AppBar(title: Text('Pantalla 3 - Resultado'),),
      body: Center(
        child: Column(children: [
          Text('Hola, mi nombre es $nombre, tengo $edad años de edad. ', style: TextStyle(fontSize: 24),),
          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context, '/');}, 
            child: Text('Inicio'))
        ],)),
      
        
    );
  }
}