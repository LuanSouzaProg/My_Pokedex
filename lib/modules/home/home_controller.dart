import 'package:app_09/api/models/pokemons.dart';
import 'package:app_09/api/services/get_all_pokemon/get_all_pokemon_services_impl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/ui/loader/loader.dart';

class HomeController extends GetxController {
  var allPokemons = <AllPokemons>[].obs;
  var next = "".obs;
  final scrollController = ScrollController();

  final GetAllPokemonService _getAllPokemonService;

  HomeController({required GetAllPokemonService getAllPokemonService})
      : _getAllPokemonService = getAllPokemonService;

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), () {
      Loader.show();
    });

    Future.delayed(const Duration(seconds: 2), () {
      getAll();
    });

    Future.delayed(const Duration(seconds: 3), () {
      Loader.hide();
    });

    scrollController.addListener(
          () {
        if (scrollController.position.atEdge) {
          bool isTop = scrollController.position.pixels == 0;
          if (!isTop) {
            getNextPokemon();
          }
        }
      },
    );
    super.onInit();
  }
  Future getAll({String? url}) async{
    var result = await _getAllPokemonService.getAllPokemon();
    allPokemons.addAll(result);
  }
  Future getNextPokemon() async{
    var result = await _getAllPokemonService.getAllNextPokemon();
    allPokemons.addAll(result);
  }

}