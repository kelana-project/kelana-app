import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:kelana_app/core/widgets/arc_list_item.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/read_controller.dart';

class ReadView extends GetView<ReadController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.myArcList.isEmpty) {
          return SizedBox();
        } else {
          return VxScrollVertical(
            physics: AlwaysScrollableScrollPhysics(),
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              children: controller.myArcList
                  .map(
                    (data) => ArcItemList(
                      myArcData: data,
                      onTapItem: () => controller.toDetail(data),
                    ),
                  )
                  .toList(),
            ).p16(),
          );
        }
      }),
    );
  }
}
