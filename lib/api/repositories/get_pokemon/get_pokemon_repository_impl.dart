import 'package:dio/dio.dart';

import '../../models/pokemon.dart';
import '../../urlApi/url_api.dart';
import 'get_pokemon_repository.dart';

class GetPokemonRepositoryImpl implements GetPokemonRepository{
  @override
  Future<Pokemon> findPokemon(String name) async {
    var result = await Dio().get('${UrlApi.baseUrl}/$name');

    if(result.statusCode == 200){
      return Pokemon.fromMap(result.data);
    }else{
      throw Exception("Failed to load Pokemon");
    }
  }
}