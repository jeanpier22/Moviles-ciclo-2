import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchDrugData() async {
  final url = Uri.parse(
      'https://api.fda.gov/drug/label.json?search=active_ingredient:ibuprofen&limit=1');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data); // o manipula el JSON como necesites
  } else {
    throw Exception('Error al cargar datos de OpenFDA');
  }
}

Future<void> fetchDrugByName(String name) async {
  final url = Uri.parse(
      'https://api.fda.gov/drug/label.json?search=openfda.brand_name:$name&limit=1');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print('Resultados para $name:');
    print(data);
  } else {
    print('Error al buscar $name');
    throw Exception('Error: ${response.statusCode}');
  }
}

