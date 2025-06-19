import 'package:flutter/material.dart';
import 'Pages/homepage.dart';
import 'Pages/formulario.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personas',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/formulario':(context) => Formulario(),
      },
    );
  }
}


