import '../../models/pokemon.dart';

abstract class GetPokemonRepository{
  Future<Pokemon> findPokemon(String name);
}