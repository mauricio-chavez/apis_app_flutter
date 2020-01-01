import 'package:flutter/material.dart';
import 'rick_and_morty_card.dart' show RickAndMortyCard;
import 'json_placeholder_card.dart' show JsonPlaceholderCard;

class ApiList extends StatelessWidget {
  final dynamic data;
  final String type;

  ApiList({this.data, this.type});

  @override
  Widget build(BuildContext context) {
    List<Widget> listData = [];

    if (type == 'rick_and_morty') {
      data.characters.forEach((character) {
        listData.add(
          RickAndMortyCard(
            name: character.name,
            status: character.status,
            image: character.image,
          ),
        );
      });
    } else if (type == 'json_placeholder') {
      data.posts.forEach((post) {
        listData.add(
          JsonPlaceholderCard(
            title: post.title,
            body: post.body,
          ),
        );
      });
    }

    return ListView(
      padding: const EdgeInsets.all(8),
      children: listData,
    );
  }
}
