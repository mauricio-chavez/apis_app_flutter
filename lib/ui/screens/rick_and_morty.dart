import 'package:flutter/material.dart';

class RickAndMortyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Awesome App')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Rick and Morty'),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/json-placeholder');
              },
              child: Text('Hola'),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
