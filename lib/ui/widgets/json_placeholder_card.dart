import 'package:flutter/material.dart';

class JsonPlaceholderCard extends StatelessWidget {
  final String title;
  final String body;

  JsonPlaceholderCard({this.title, this.body});

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: Image.network(this.image),
        title: Text(title),
        subtitle: Text(body),
        isThreeLine: true,
      ),
    );
  }
}
