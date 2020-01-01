import 'package:flutter/material.dart';
import '../widgets/api_choice_navbar.dart' show APIChoiceNavbar;
import '../../models/rick_and_morty.dart' show RickAndMortyCharacters;
import '../../models/json_placeholder.dart' show JsonPlaceholderPosts;
import '../../repositories/rick_and_morty.dart'
    show fetchRickAndMortyCharacters;
import '../../repositories/json_placeholder.dart' show fetchJsonPlaceholderPosts;
import '../widgets/rick_and_morty_list.dart' show RickAndMortyAPI;
import '../widgets/json_placeholder_list.dart' show JsonPlaceholderAPI;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  int _index = 0;
  String _title = 'Awesome App';
  Future<RickAndMortyCharacters> _rickAndMortyCharacters;
  Future<JsonPlaceholderPosts> _jsonPlaceholderPosts;
  Widget _apiWidget = Text('Selecciona un API');

  void _onApiTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          _title = 'Rick and Morty';
          _apiWidget = RickAndMortyAPI(
            future: _rickAndMortyCharacters,
          );
          break;
        case 1:
          _title = 'JSON Placeholder';
          _apiWidget = JsonPlaceholderAPI(
            future: _jsonPlaceholderPosts,
          );
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _rickAndMortyCharacters = fetchRickAndMortyCharacters();
    _jsonPlaceholderPosts = fetchJsonPlaceholderPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Center(
        child: _apiWidget,
      ),
      bottomNavigationBar: APIChoiceNavbar(
        currentIndex: _index,
        onTap: _onApiTapped,
      ),
    );
  }
}
