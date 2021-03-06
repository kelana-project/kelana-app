import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kelana_app/app/modules/artwork/views/artwork_view.dart';
import 'package:kelana_app/app/modules/profile/views/profile_view.dart';
import 'package:kelana_app/app/modules/read/views/read_view.dart';
import 'package:kelana_app/app/modules/store/views/store_view.dart';
import 'package:kelana_app/core/widgets/home_app_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _pages = [
    ReadView(),
    ArtworkView(),
    StoreView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: PreferredSize(
            child: HomeAppBar(
              onPressedDarkMode: () =>
                  controller.changeTheme(!controller.isDark.value),
              initialIConIndex: controller.initialIcon.value,
            ),
            preferredSize: Size.fromHeight(kToolbarHeight),
          ),
          body: _pages[controller.tabIndex.value],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: BottomNavyBar(
            onItemSelected: controller.changeTabIndex,
            selectedIndex: controller.tabIndex.value,
            curve: Curves.easeIn,
            items: [
              BottomNavyBarItem(
                  icon: Icon(Icons.book_rounded),
                  title: Text('Read'),
                  activeColor: Colors.blue),
              BottomNavyBarItem(
                  icon: Icon(Icons.image_rounded),
                  title: Text('Artwork'),
                  activeColor: Colors.orange),
              BottomNavyBarItem(
                  icon: Icon(Icons.store_rounded),
                  title: Text('Store'),
                  activeColor: Colors.red),
              BottomNavyBarItem(
                  icon: Icon(Icons.person_rounded),
                  title: Text('Account'),
                  activeColor: Colors.teal),
            ],
          ).card.roundedLg.make().px8(),
        ),
      ),
    );
  }
}
