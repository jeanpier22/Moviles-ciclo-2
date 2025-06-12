import 'package:flutter/material.dart';

class MiStatelessWidget extends StatelessWidget{
  const MiStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('StatelessWidget'),),
        body: Center(
          child: Texto() ,),
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
