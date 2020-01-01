import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import '../models/rick_and_morty.dart' show RickAndMortyCharacters;

Future<RickAndMortyCharacters> fetchRickAndMortyCharacters() async {
  final response = await http.get('https://rickandmortyapi.com/api/character/');
  if (response.statusCode == 200) {
    return RickAndMortyCharacters.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load characters');
  }
}
