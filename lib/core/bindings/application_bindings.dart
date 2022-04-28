import 'dart:developer';

import 'package:app_09/api/repositories/get_all_pokemons/get_all_pokemon_repository.dart';
import 'package:app_09/api/repositories/get_all_pokemons/get_all_pokemon_repository_impl.dart';
import 'package:app_09/api/repositories/get_pokemon/get_pokemon_repository.dart';
import 'package:app_09/api/repositories/get_pokemon/get_pokemon_repository_impl.dart';
import 'package:app_09/api/services/get_all_pokemon/get_all_pokemon_services.dart';
import 'package:app_09/api/services/get_all_pokemon/get_all_pokemon_services_impl.dart';
import 'package:app_09/api/services/get_pokemon/get_pokemon_service.dart';
import 'package:app_09/api/services/get_pokemon/get_pokemon_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    log("[ApplicationBindings] - Iniciando Bindings");
    Get.lazyPut<GetPokemonRepository>(() => GetPokemonRepositoryImpl(),
        fenix: true);
    Get.lazyPut<GetAllPokemonRepository>(() => GetAllPokemonsRepositoryImpl(),
        fenix: true);
    Get.lazyPut<GetPokemonService>(
        () => GetPokemonServiceImpl(getPokemonRepository: Get.find()),
        fenix: true);
    Get.lazyPut<GetAllPokemonService>(
        () => GetAllPokemonServiceImpl(getAllPokemonRepository: Get.find()),
        fenix: true);
  }
}
