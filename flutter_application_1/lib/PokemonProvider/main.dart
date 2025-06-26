import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pokemon_provider.dart';
import 'poke_page.dart';

void main(){
  runApp(
    ChangeNotifierProvider(create:(_)=> PokemonProvider(),
    child: MyApp(),)
  );

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PokePage(),
    );
  }
}