import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ArcListDialog extends StatelessWidget {
  final VoidCallback? onPressRead;
  final Map? myArcData;

  const ArcListDialog({Key? key, this.onPressRead, this.myArcData})
      : super(key: key);

  void _onPressRead() {
    Get.back();
    onPressRead!();
  }

  void _onPressClose() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: [
        _image(),
        _detail(context),
      ].vStack().card.p32.make().scrollVertical(),
    );
  }

  Widget _image() {
    return Image.network(myArcData!["image"]);
  }

  Widget _detail(BuildContext context) {
    return [
      _status(),
      [
        [
          '${myArcData!["name"]}'.text.headline5(context).make(),
          '100 chapters | by John Doe'.text.bodyText1(context).make(),
        ].vStack(crossAlignment: CrossAxisAlignment.stretch).expand(),
        Icon(Icons.favorite).onTap(() {}),
      ].hStack().box.make(),
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          .text
          .bodyText2(context)
          .make()
          .py8(),
      [
        Icon(Icons.menu_book_rounded),
        '   Read now'.text.buttonText(context).make(),
      ].hStack().px16().py8().card.roundedLg.makeCentered().onTap(_onPressRead),
    ]
        .vStack(crossAlignment: CrossAxisAlignment.stretch)
        .p16()
        .box
        .teal500
        .make();
  }

  Widget _status() {
    return [
      'Action, Adventure, Demon'.text.size(10).make(),
      [
        Icon(Icons.visibility_outlined, size: 18),
        '2.6K'.text.size(10).make(),
        Icon(Icons.favorite_border_rounded, size: 18),
        '2.6K'.text.size(10).make(),
      ].hStack(),
    ].hStack(alignment: MainAxisAlignment.spaceBetween).box.make();
  }
}
