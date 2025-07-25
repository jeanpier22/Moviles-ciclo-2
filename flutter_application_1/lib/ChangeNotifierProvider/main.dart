import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './counter_model.dart';
import './home_page.dart';


void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> Counter()),
      ChangeNotifierProvider(create: (_)=> Counter()),

    ],
    child: MyApp(),
    )
  );
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}