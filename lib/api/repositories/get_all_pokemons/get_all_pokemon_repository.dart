import '../../models/pokemons.dart';

abstract class GetAllPokemonRepository{
  Future<List<AllPokemons>> getAllPokemons();

  Future<List<AllPokemons>> getAllNextPokemon();
}