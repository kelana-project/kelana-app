import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/arcdetail_controller.dart';

class ArcdetailView extends GetView<ArcdetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ArcdetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ArcdetailView is working ${controller.count}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
