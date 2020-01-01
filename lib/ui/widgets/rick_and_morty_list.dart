import 'package:flutter/material.dart';
import '../../models/rick_and_morty.dart' show RickAndMortyCharacters;
import 'api_list.dart' show ApiList;

class RickAndMortyAPI extends StatelessWidget {
  final Future future;

  RickAndMortyAPI({this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RickAndMortyCharacters>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ApiList(data: snapshot.data, type: 'rick_and_morty');
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return Text('${snapshot.error}');
        }

        return CircularProgressIndicator();
      },
    );
  }
}
