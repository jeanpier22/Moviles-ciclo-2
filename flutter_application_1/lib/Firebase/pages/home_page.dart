import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Mundo'),
      ),
      body: FutureBuilder(
        future: getPeople(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
            return Text(snapshot.data?[index]['nombre']);
            },
          
          );
          }
          else{
            return const Center(
              child: CircularProgressIndicator(),
            );    
          }
          
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await Navigator.pushNamed(context, '/add');
          setState(() {});
        } ,
        child: const Icon(Icons.add),) ,
    );
  }
}
