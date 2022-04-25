import 'dart:convert';

class AllPokemons {
  final String name;
  final String url;

  AllPokemons({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory AllPokemons.fromMap(Map<String, dynamic> map) {
    return AllPokemons(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AllPokemons.fromJson(String source) => AllPokemons.fromMap(
    json.decode(source),
  );

  getPhotoSvg() {
    var urlPhoto = url.replaceAll("https://pokeapi.co/api/v2/pokemon/", "");
    urlPhoto = urlPhoto.replaceAll("/", "");

    var finalUrl =
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$urlPhoto.svg";

    return finalUrl;
  }

  getPhotoPng(){
    var urlPhoto = url.replaceAll("https://pokeapi.co/api/v2/pokemon/", "");
    urlPhoto = urlPhoto.replaceAll("/", "");

    var finalUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$urlPhoto.png";

    return finalUrl;
  }
}