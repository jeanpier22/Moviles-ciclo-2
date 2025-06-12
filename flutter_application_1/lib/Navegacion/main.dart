import 'package:flutter/material.dart';
import 'pantalla1.dart';
import 'pantalla2.dart';
import 'pantalla3.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rutas',
      initialRoute: '/',
      routes: {
        '/':(context) => Pantalla1(),
        '/formulario':(context) => Pantalla2(),
        '/resultado':(context) => Pantalla3(),
      },
    );
  }
}