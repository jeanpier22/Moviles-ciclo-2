import 'package:flutter/material.dart';

void main() {

  final ValueNotifier<int> counter = ValueNotifier<int>(0);

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("Hola mundo"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Presiona"),
            ValueListenableBuilder<int>(
              valueListenable: counter,
              builder: (context, value, _) => Text(
                'Contador: $value',
                style: TextStyle(fontSize: 32),
              )),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.amber[600],
                      child: Center(
                        child: Text("Container 1",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),),)),
                    
                    SizedBox(width: 20,),
                    
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.amber[400],
                      child: Center(
                        child: Text("Container 2",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),),))
                  ],
                  ),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Container(
                      height: 100,
                      width: 200,
                      color: Colors.amber[200],
                      child: Center(
                        child: Text("Container 1",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),),)),
                      SizedBox(width: 20,),

                      Container(
                        height: 100,
                        width: 200,
                        color: Colors.amber[0],
                        child: Center(
                          child: Text("Container 2",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),),))
                  ],
                  )
 
                ],
            ))
            
          ], 
        ),
      ),

      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => counter.value++,
            child: Icon(Icons.add),),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () => counter.value--,
            child: Icon(Icons.remove),)],
      )  
      
        
    ),
  ),
  );
}
