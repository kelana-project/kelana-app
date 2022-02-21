import 'package:get/get.dart';

import '../../wiki/controllers/wiki_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../../read/controllers/read_controller.dart';
import '../../store/controllers/store_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ReadController>(
      () => ReadController(),
    );
    Get.lazyPut<WikiController>(
      () => WikiController(),
    );
    Get.lazyPut<StoreController>(
      () => StoreController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
