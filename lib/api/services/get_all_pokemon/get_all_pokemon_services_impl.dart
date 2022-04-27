import 'package:app_09/api/models/pokemons.dart';

abstract class GetAllPokemonService{
  Future<List<AllPokemons>> getAllPokemon();
  Future<List<AllPokemons>> getAllNextPokemon();
}