import 'package:app_09/core/bindings/application_bindings.dart';
import 'package:app_09/core/ui/pokedex_ui_config.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:asuka/asuka.dart' as asuka;

import 'modules/details/details_module.dart';
import 'modules/home/home_module.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: asuka.builder,
      navigatorObservers: [
        asuka.asukaHeroController
      ],
      title: PokedexUiConfig.title,
      initialBinding: ApplicationBindings(),
      getPages: [
        ...HomeModule().routers,
        ...DetailsModule().routers,
      ],
    );
  }
}