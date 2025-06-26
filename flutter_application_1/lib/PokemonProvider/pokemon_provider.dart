import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PokemonProvider with ChangeNotifier {
  String _nombre = '';
  String get nombre => _nombre;

  Future<void> fetchPokemon(String name) async {
    final url = 'https://pokeapi.co/api/v2/pokemon/$name';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _nombre = data['abilities'][0]['ability']["name"];
      notifyListeners(); // Notifica a los widgets que el dato cambió
    }
  }
}
