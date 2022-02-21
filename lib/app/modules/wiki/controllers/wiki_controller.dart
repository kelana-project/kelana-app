import 'package:get/get.dart';

class WikiController extends GetxController {
  List<String> listCategory = [
    'Characters',
    'Places',
    'Beast',
    'Ecology',
    'Item'
  ];

  List<Map> listWikiItem = [
    {"name": "insect", "image": "http://placeimg.com/640/480/animals/1"},
    {"name": "bear", "image": "http://placeimg.com/640/480/animals/2"},
    {"name": "rabbit", "image": "http://placeimg.com/640/480/animals/3"},
    {"name": "spider", "image": "http://placeimg.com/640/480/animals/4"},
    {"name": "bird", "image": "http://placeimg.com/640/480/animals/5"},
    {"name": "cetacean", "image": "http://placeimg.com/640/480/animals/6"},
    {"name": "snake", "image": "http://placeimg.com/640/480/animals/7"},
    {"name": "cetacean", "image": "http://placeimg.com/640/480/animals/8"},
    {"name": "horse", "image": "http://placeimg.com/640/480/animals/9"},
    {"name": "lion", "image": "http://placeimg.com/640/480/animals/10"}
  ];

  final selectedCategory = ''.obs;

  @override
  void onClose() {}
}
