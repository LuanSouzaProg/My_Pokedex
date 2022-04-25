import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/pokemons.dart';
import '../../urlApi/url_api.dart';
import 'get_all_pokemon_repository.dart';

class GetAllPokemonsRepositoryImpl extends GetxController
    implements GetAllPokemonRepository {

  var url = '${UrlApi.baseUrl}?&limit=100&offset=0'.obs;

  @override
  Future<List<AllPokemons>> getAllNextPokemon() async {
    var result = await Dio().get(url.value);

    if(result.statusCode == 200){
      if(result.data['next'] != null){
        var nextResult = await Dio().get('${result.data['next']}');
        if(nextResult.statusCode == 200){
          url.value = nextResult.data['next'];
          return List<AllPokemons>.from(nextResult.data['results'].map((x)=> AllPokemons.fromMap(x)));
        }else{
          throw Exception('Failed to load pokemons');
        }
      }else{
        throw Exception('Failed to load pokemons');
      }
    }else{
      throw Exception('Failed to load pokemons');
    }
  }

  @override
  Future<List<AllPokemons>> getAllPokemons() async {
    var result = await Dio().get('${UrlApi.baseUrl}?&limit=100&offset=0');

    if(result.statusCode == 200){
      return List<AllPokemons>.from(result.data['results'].map((x)=> AllPokemons.fromMap(x)));
    }else{
      throw Exception("Failed to load Pokemons");
    }
  }
}