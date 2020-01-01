import 'package:flutter/material.dart';
import 'ui/screens/home.dart';
import 'ui/screens/rick_and_morty.dart';
import 'ui/screens/json_placeholder.dart';

class AwesomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/rick-and-morty': (context) => RickAndMortyScreen(),
        '/json-placeholder': (context) => JsonPlaceholderScreen(),
      },
    );
  }
}
