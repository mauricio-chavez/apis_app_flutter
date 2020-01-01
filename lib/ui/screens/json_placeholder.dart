import 'package:flutter/material.dart';

class JsonPlaceholderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Awesome App')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('JSON Placeholder'),
            RaisedButton(
              onPressed: () {},
              child: Text('Hola'),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
