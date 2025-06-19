import 'package:flutter/material.dart';
import '../Widgets/contenedor.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

    final personas = const[
      {'nombre':'Juan', 'apellido':'Apaza'},
      {'nombre':'Paola', 'apellido':'Miranda'},
      {'nombre':'Karen', 'apellido':'Lucar'},
      {'nombre':'Renzo', 'apellido':'Castro'},
      {'nombre':'Luis', 'apellido':'Vilca'},   
      ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Lista de participantes:   '),),
      body: ListView(
        children: <Widget>[

          //for(int i=0; i<5;i++)
          //  Contenedor(nombre: "${personas[i]["nombre"]}", apellido: "${personas[i]["apellido"]}"),
          for(var persona in personas)
            Contenedor(nombre: "${persona['nombre']}", apellido: "${persona['apellido']}"),
          
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/formulario');
            }, 
          child: Text('Ir a formulario'))
        ],
      ),
    ),

  );
  }
}
 

