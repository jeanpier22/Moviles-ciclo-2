import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget{
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla 1'),),
      
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/formulario');
          }, 
          child: Text('Ir a formulario')),),
    );
  }
}