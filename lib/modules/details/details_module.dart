import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../core/module/module.dart';
import 'details_bindings.dart';
import 'details_page.dart';

class DetailsModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(name: '/details', page: () => const DetailsPage(), binding: DetailsBindings()),
  ];
}