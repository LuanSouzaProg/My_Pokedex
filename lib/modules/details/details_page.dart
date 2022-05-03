import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      controller.pokemonName.value = Get.arguments;
      return Scaffold(
        appBar: AppBar(
          title: Text(controller.data.first.name.isEmpty ? 'Pokemon' : controller.data.first.name),
        ),
        body: Container(),
      );
    });
  }
}