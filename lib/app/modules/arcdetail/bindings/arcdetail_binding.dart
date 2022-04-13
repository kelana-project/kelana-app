import 'package:get/get.dart';

import '../controllers/arcdetail_controller.dart';

class ArcdetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArcdetailController>(
      () => ArcdetailController(),
    );
  }
}
