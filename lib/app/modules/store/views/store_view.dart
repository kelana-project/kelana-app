import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/store_controller.dart';

class StoreView extends GetView<StoreController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          VxSwiper(
              autoPlay: true,
              items: controller.imgList.map((url) {
                return Image.network(url).card.make().centered();
              }).toList()),
          Container(
            height: 80.0,
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.android),
                          Text(
                            'Category ${index + 1}',
                            style: Theme.of(context).textTheme.button,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
