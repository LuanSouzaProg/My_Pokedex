import 'package:app_09/api/services/get_pokemon/get_pokemon_service.dart';
import 'package:get/get.dart';
import '../../api/models/pokemon.dart';


class DetailsController extends GetxController{
  var data = <Pokemon>[].obs;
  var pokemonName = ''.obs;

  final GetPokemonService _getPokemonService;

  DetailsController({required GetPokemonService getPokemonService}) : _getPokemonService = getPokemonService;

  @override
  void onReady() {
    super.onInit();
    getPokemon(pokemonName.value.replaceAll('"', ''));
  }

  void getPokemon(String name) async{
    var result = await _getPokemonService.findPokemon(name);
    data.add(result);
  }


}