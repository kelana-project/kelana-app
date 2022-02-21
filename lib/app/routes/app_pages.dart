import 'package:get/get.dart';

import 'package:kelana_app/app/modules/wiki/views/wiki_view.dart';
import 'package:kelana_app/app/modules/home/bindings/home_binding.dart';
import 'package:kelana_app/app/modules/home/views/home_view.dart';
import 'package:kelana_app/app/modules/profile/views/profile_view.dart';
import 'package:kelana_app/app/modules/read/views/read_view.dart';
import 'package:kelana_app/app/modules/store/views/store_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.read,
      page: () => ReadView(),
    ),
    GetPage(
      name: _Paths.artwork,
      page: () => WikiView(),
    ),
    GetPage(
      name: _Paths.store,
      page: () => StoreView(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => ProfileView(),
    ),
  ];
}
