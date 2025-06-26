import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './counter_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
      final counter = Provider.of<Counter>(context);

      return Scaffold(
        appBar: AppBar(title: Text('Ejemplo Provider'),),
        body: Center(
          child: Column(
            children: [
              Text('Contador1: ${counter.count1}'),
              Text('Contador2: ${counter.count2}'),
              Text('Contador3: ${counter.count3}'),
              Text('Contador4: ${counter.count4}'),
              Text('Contador5: ${counter.count5}'),
              Text('Contador6: ${counter.count6}'),
              Text('Contador7: ${counter.count7}'),           
            ],
          )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter.incrementar();
          counter.decrementar();

        } ,
        child: Icon(Icons.add),),

      );
      

  }
}