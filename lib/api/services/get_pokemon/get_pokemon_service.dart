import '../../models/pokemon.dart';

abstract class GetPokemonService{
  Future<Pokemon> findPokemon(String name);
}