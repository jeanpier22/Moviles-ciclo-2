import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MiStatefulWidget(),  // Estoy invocando un Widget
    );
  }
}

class MiStatefulWidget extends StatefulWidget{
  const MiStatefulWidget({super.key});

  @override
  State<MiStatefulWidget> createState() => _MiStatefulWidgetState();
}



class _MiStatefulWidgetState extends State<MiStatefulWidget>{

  int contador = 0;

  void _incrementar(){
    setState(() {
      contador++;
    }); 
  }

  void _decrementar(){
    setState(() {
      contador--;
    }); 
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('StatefulWidget'),),
        body: Center(
          child: Text('Contador:  $contador'),),
        floatingActionButton: Row(children: [
          FloatingActionButton(
          onPressed: _incrementar,
          child: Icon(Icons.add),),
          FloatingActionButton(
            onPressed: _decrementar,
            child: Icon(Icons.remove),),  
        ],)
      );
    }

  }