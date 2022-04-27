import 'package:app_09/api/models/pokemons.dart';
import 'package:app_09/api/repositories/get_all_pokemons/get_all_pokemon_repository.dart';

import 'get_all_pokemon_services_impl.dart';

class GetAllPokemonServiceImpl implements GetAllPokemonService{
  final GetAllPokemonRepository _getAllPokemonRepository;

  GetAllPokemonServiceImpl({required GetAllPokemonRepository getAllPokemonRepository}) : _getAllPokemonRepository = getAllPokemonRepository;

  @override
  Future<List<AllPokemons>> getAllPokemon() => _getAllPokemonRepository.getAllPokemons();

  @override
  Future<List<AllPokemons>> getAllNextPokemon() => _getAllPokemonRepository.getAllNextPokemon();


}