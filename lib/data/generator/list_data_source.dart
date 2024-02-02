import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:listview_pagination/data/model/list_item.dart';

class ListDataSource {
  static const int ITEMS_PER_PAGE = 20;
  static const int PAGE_COUNT = 5;
  static final _randomInt = Random();
  static int _show_page_count = 0;

  Future<BuiltList<ListItem>> getNextListPage() async {
    if (_show_page_count > PAGE_COUNT) {
      throw NoNextPageException();
    }

    // increment
    _show_page_count++;

    await Future.delayed(const Duration(milliseconds: 750));

    return BuiltList.of(
      List.generate(
        ITEMS_PER_PAGE,
        _generateListItem,
      ),
    );
  }

  ListItem _generateListItem(int index) {
    return ListItem(
      (b) => b
        ..title = 'No $index'
        ..subTitle = 'This is the item in No.$index'
        ..colorCode = _randomInt.nextInt(0xFFFFFFFF),
    );
  }
}

class NoNextPageException implements Exception {
  NoNextPageException();
}
