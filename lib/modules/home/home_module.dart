import 'package:app_09/core/module/module.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../modules/home/home_page.dart';
import 'home_bindings.dart';

class HomeModule implements Module{

  @override
  List<GetPage> routers = [
    GetPage(name: '/', page: () => HomePage(), binding: HomeBindings())
  ];
}
