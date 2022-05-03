import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final nameEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Pokedex'),
      ),
      body: Column(
        children: [
          Obx(() {
            return controller.allPokemons.isEmpty
                ? const SizedBox.shrink()
                : Expanded(
              child: GridView.builder(
                controller: controller.scrollController,
                itemCount: controller.allPokemons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (_, index) {
                  var pokemonData = controller.allPokemons[index];
                  return InkWell(
                    onTap: () => Get.toNamed('/details', arguments: pokemonData.name),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(pokemonData.getPhotoPng(), height: 100),
                            const SizedBox(height: 10),
                            Text(
                              pokemonData.name.capitalize!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}