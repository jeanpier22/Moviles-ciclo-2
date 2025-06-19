import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: Formulario(),
  ));
}

class Formulario extends StatefulWidget{
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _Pantalla2State();
}



class _Pantalla2State extends State<Formulario>{
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController edadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla 2 Formulario'),),
      body: Padding(
        padding: EdgeInsets.all(30.0),
          child: Column(children: [
            TextField(
              controller: nombreController,
              decoration: InputDecoration(labelText: 'Ingresa tu nombre:') ,
            ),
            SizedBox(height: 20,),
            TextField(
              controller: edadController,
              decoration: InputDecoration(labelText: 'Ingresa tu edad:') ,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/',arguments: [nombreController.text, edadController.text]);
              }, 
              child: Text('Enviar'))
          ],),),
    );
  }

}