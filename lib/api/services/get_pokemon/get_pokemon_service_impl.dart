import 'package:app_09/api/models/pokemon.dart';
import 'package:app_09/api/services/get_pokemon/get_pokemon_service.dart';
import '../../repositories/get_pokemon/get_pokemon_repository.dart';

class GetPokemonServiceImpl implements GetPokemonService{
  final GetPokemonRepository _getPokemonRepository;

  GetPokemonServiceImpl({required GetPokemonRepository getPokemonRepository}) : _getPokemonRepository = getPokemonRepository;

  @override
  Future<Pokemon> findPokemon(String name) => _getPokemonRepository.findPokemon(name);



}