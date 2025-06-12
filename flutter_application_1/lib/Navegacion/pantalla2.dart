import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: Pantalla2(),
  ));
}

class Pantalla2 extends StatefulWidget{
  const Pantalla2({super.key});

  @override
  State<Pantalla2> createState() => _Pantalla2State();
}



class _Pantalla2State extends State<Pantalla2>{
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
                Navigator.pushNamed(context, '/resultado',arguments: nombreController.text);
              }, 
              child: Text('Enviar'))
          ],),),
    );
  }

}