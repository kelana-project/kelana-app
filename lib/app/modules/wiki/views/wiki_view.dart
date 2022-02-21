import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kelana_app/core/widgets/app_filter_chip.dart';
import 'package:kelana_app/core/widgets/wiki_list_item.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/wiki_controller.dart';

class WikiView extends GetView<WikiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          controller.listCategory
              .map((item) => Obx(() => AppFilterChip(
                    label: item,
                    isSelected: item == controller.selectedCategory.value,
                    onTap: () => controller.selectedCategory.value = item,
                  ).marginOnly(right: 8)))
              .toList()
              .hStack()
              .scrollHorizontal(),
          Expanded(
            child: controller.listWikiItem
                .map((item) => WikiItemList(myWikiData: item))
                .toList()
                .vStack()
                .p16()
                .scrollVertical(),
          ),
        ],
      ),
    );
  }
}
