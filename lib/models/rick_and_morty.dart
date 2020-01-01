class RickAndMortyCharacter {
  final String name;
  final String status;
  final String image;

  RickAndMortyCharacter({this.name, this.status, this.image});
}

class RickAndMortyCharacters {
  final List<RickAndMortyCharacter> characters;

  RickAndMortyCharacters({this.characters});

  factory RickAndMortyCharacters.fromJson(Map<String, dynamic> json) {
    final List<RickAndMortyCharacter> characters = [];
    final results = json['results'];

    results.forEach((result) {
      characters.add(RickAndMortyCharacter(
        name: result['name'],
        status: result['status'],
        image: result['image'],
      ));
    });

    return RickAndMortyCharacters(characters: characters);
  }
}
