import 'package:get/get.dart';

import '../modules/arcdetail/bindings/arcdetail_binding.dart';
import '../modules/arcdetail/views/arcdetail_view.dart';
import '../modules/artwork/views/artwork_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/read/views/read_view.dart';
import '../modules/store/views/store_view.dart';

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
      page: () => ArtworkView(),
    ),
    GetPage(
      name: _Paths.store,
      page: () => StoreView(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => ProfileView(),
    ),
    GetPage(
      name: _Paths.arcDetail,
      page: () => ArcdetailView(),
      binding: ArcdetailBinding(),
    ),
  ];
}
