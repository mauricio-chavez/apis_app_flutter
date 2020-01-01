class JsonPlaceholderPost {
  final String title;
  final String body;

  JsonPlaceholderPost({this.title, this.body});
}

class JsonPlaceholderPosts {
  final List<JsonPlaceholderPost> posts;

  JsonPlaceholderPosts({this.posts});

  factory JsonPlaceholderPosts.fromJson(List json) {
    final List<JsonPlaceholderPost> posts = [];

    json.forEach((result) {
      posts.add(JsonPlaceholderPost(
        title: result['title'],
        body: result['body'],
      ));
    });

    return JsonPlaceholderPosts(posts: posts);
  }
}
