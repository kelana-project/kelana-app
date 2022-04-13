import 'package:get/get.dart';
import 'package:kelana_app/app/routes/app_pages.dart';

class ReadController extends GetxController {
  final RxList<Map> myArcList = RxList();
  @override
  void onInit() {
    myArcList.add(
      {
        "id": 0,
        "name": "Arc 1",
        "image":
            "https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg"
      },
    );
    myArcList.add(
      {
        "id": 1,
        "name": "Arc 2",
        "image":
            "https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg"
      },
    );
    myArcList.add(
      {
        "id": 2,
        "name": "Arc 3",
        "image":
            "https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg"
      },
    );
    super.onInit();
  }

  @override
  void onClose() {}

  void toDetail(Map data) {
    Get.toNamed(Routes.arcDetail);
  }
}
