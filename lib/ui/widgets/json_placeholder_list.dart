import 'package:flutter/material.dart';
import '../../models/json_placeholder.dart' show JsonPlaceholderPosts;
import 'api_list.dart' show ApiList;

class JsonPlaceholderAPI extends StatelessWidget {
  final Future future;

  JsonPlaceholderAPI({this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<JsonPlaceholderPosts>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ApiList(data: snapshot.data, type: 'json_placeholder');
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return Text('${snapshot.error}');
        }

        return CircularProgressIndicator();
      },
    );
  }
}
