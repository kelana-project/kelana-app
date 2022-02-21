import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class WikiItemList extends StatelessWidget {
  final Map? myWikiData;
  final VoidCallback? onPress;

  WikiItemList({Key? key, this.myWikiData, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('tap${myWikiData.toString()}');
        onPress!();
      },
      child: [
        Image.network(myWikiData!["image"],
            height: 200,
            width: Get.width,
            fit: BoxFit.cover, loadingBuilder: (BuildContext context,
                Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        }),
        VxBox()
            .height(200)
            .width(Get.width)
            .color(Vx.black.withOpacity(0.7))
            .make(),
        _detail(context),
      ].zStack().card.roundedSM.make().py8(),
    );
  }

  Widget _detail(BuildContext context) {
    return [
      '${myWikiData!["name"]}'.text.headline2(context).make(),
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          .text
          .bodyText2(context)
          .make(),
      Icon(Icons.menu_book_rounded, size: 50).py8(),
    ].vStack(crossAlignment: CrossAxisAlignment.start).p8();
  }
}
