import 'package:flutter/material.dart';


class Contenedor extends StatelessWidget{
  final String nombre;
  final String apellido;

  const Contenedor({
    super.key,
    required this.nombre, required this.apellido
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(20),
            height: 100,
            color: Colors.amber,
            child: 
            Center(child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(nombre),
                    Text(apellido)],
                    ),
             ),
             
          );
  }
}
