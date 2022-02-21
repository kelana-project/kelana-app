import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wiki_controller.dart';

class WikiView extends GetView<WikiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'WikiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
