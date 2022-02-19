import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/artwork_controller.dart';

class ArtworkView extends GetView<ArtworkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ArtworkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
