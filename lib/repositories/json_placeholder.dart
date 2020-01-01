import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import '../models/json_placeholder.dart' show JsonPlaceholderPosts;

Future<JsonPlaceholderPosts> fetchJsonPlaceholderPosts() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');
  if (response.statusCode == 200) {
    return JsonPlaceholderPosts.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load characters');
  }
}
