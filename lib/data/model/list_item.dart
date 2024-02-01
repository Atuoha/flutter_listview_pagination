library list_item;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'list_item.g.dart';

abstract class ListItem implements Built<ListItem, ListItemBuilder> {
  String get title;
  String get subTitle;
  int get colorCode;

  ListItem._();

  factory ListItem([void Function(ListItemBuilder b)? updates]) = _$ListItem;
}
