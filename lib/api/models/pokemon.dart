import 'dart:convert';

class Pokemon {
  final int id;
  final String name;
  final int weight;
  final int height;
  final int base_experience;
  final List<TypeResponse> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.weight,
    required this.height,
    required this.base_experience,
    required this.types,
  });

  String get urlSvgImage =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg';

  String get urlPngImage =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'weight': weight,
      'height': height,
      'base_experience': base_experience,
      'types': types,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map["id"]?.toInt() ?? 0,
      name: map["name"] ?? '',
      weight: map["weight"]?.toInt() ?? 0,
      height: map["height"]?.toInt() ?? 0,
      base_experience: map["base_experience"]?.toInt() ?? 0,
      types: List<TypeResponse>.from(
          map["types"]?.map((x) => TypeResponse.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));
}

class TypeResponse {
  int slot;
  Type type;

  TypeResponse({
    required this.slot,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'slot': slot,
      'type': type.toMap(),
    };
  }

  factory TypeResponse.fromMap(Map<String, dynamic> map) {
    return TypeResponse(
      slot: map['slot']?.toInt() ?? 0,
      type: Type.fromMap(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TypeResponse.fromJson(String source) =>
      TypeResponse.fromMap(json.decode(source));
}

class Type {
  String name;

  Type({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      name: map["name"] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Type.fromJson(String source) => Type.fromMap(json.decode(source));
}