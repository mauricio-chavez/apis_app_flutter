import 'package:flutter/material.dart';

class RickAndMortyCard extends StatelessWidget {
  final String name;
  final String status;
  final String image;

  RickAndMortyCard({this.name, this.status, this.image});

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(this.image),
        title: Text(this.name),
        subtitle: Text('Status: ${this.status}'),
        isThreeLine: true,
      ),
    );
  }
}
