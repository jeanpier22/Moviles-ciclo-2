import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {

  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController edadController = TextEditingController(text: "");
  TextEditingController dniController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Nombre'),
      ),
      body: Column(
        children:   [
          TextField(
            controller: nameController,
            decoration:  InputDecoration(
              hintText: 'Ingrese nuevo nombre',
            ),
          ),
          TextField(
            controller: edadController,
            decoration:  InputDecoration(
              hintText: 'Ingrese edad',
            ),
          ),
          TextField(
            controller: dniController,
            decoration:  InputDecoration(
              hintText: 'Ingrese DNI',
            ),
          ),
          ElevatedButton(onPressed: ()async{
            await addPeople(nameController.text,edadController.text,dniController.text);
            Navigator.pop(context);

          }, child: Text("Guardar"))
        ],
      )
    );
  }
}
