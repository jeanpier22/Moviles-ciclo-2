import 'package:flutter/material.dart';
void main(){
runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MiStatelessWidget(),  // Estoy invocando un Widget
    );
  }
}


class MiStatelessWidget extends StatelessWidget{
  const MiStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('StatelessWidget'),),
        body: Center(
          child: Texto() ,), // Estoy invocando un Widget
      );
  }
}

class Texto extends StatelessWidget{
  const Texto({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Text('Hola soy un StatelessWidget'),
          Text('Hola soy un StatelessWidget'),
          Text('Hola soy un StatelessWidget') 
        ],),);
  }
}



