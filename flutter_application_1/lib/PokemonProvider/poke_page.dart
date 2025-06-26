import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pokemon_provider.dart';


class PokePage extends StatelessWidget{
  const PokePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemon = Provider.of<PokemonProvider>(context);
    final TextEditingController controller = TextEditingController();

     return Scaffold(
        appBar: AppBar(title: Text('PokeAPI con Provider')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(labelText: 'Ingresa nombre del Pokémon'),
              ),
              ElevatedButton(
                onPressed: () {
                  pokemon.fetchPokemon(controller.text.toLowerCase());
                },
                child: Text('Buscar'),
              ),
              SizedBox(height: 20),
              Text('Nombre: ${pokemon.nombre}'),
            ],
          ),
        ),
      );
  }
}