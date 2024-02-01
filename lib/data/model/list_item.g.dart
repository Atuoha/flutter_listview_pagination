// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListItem extends ListItem {
  @override
  final String title;
  @override
  final String subTitle;
  @override
  final int colorCode;

  factory _$ListItem([void Function(ListItemBuilder)? updates]) =>
      (new ListItemBuilder()..update(updates))._build();

  _$ListItem._(
      {required this.title, required this.subTitle, required this.colorCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'ListItem', 'title');
    BuiltValueNullFieldError.checkNotNull(subTitle, r'ListItem', 'subTitle');
    BuiltValueNullFieldError.checkNotNull(colorCode, r'ListItem', 'colorCode');
  }

  @override
  ListItem rebuild(void Function(ListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListItemBuilder toBuilder() => new ListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListItem &&
        title == other.title &&
        subTitle == other.subTitle &&
        colorCode == other.colorCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jc(_$hash, colorCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListItem')
          ..add('title', title)
          ..add('subTitle', subTitle)
          ..add('colorCode', colorCode))
        .toString();
  }
}

class ListItemBuilder implements Builder<ListItem, ListItemBuilder> {
  _$ListItem? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  int? _colorCode;
  int? get colorCode => _$this._colorCode;
  set colorCode(int? colorCode) => _$this._colorCode = colorCode;

  ListItemBuilder();

  ListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subTitle = $v.subTitle;
      _colorCode = $v.colorCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListItem;
  }

  @override
  void update(void Function(ListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListItem build() => _build();

  _$ListItem _build() {
    final _$result = _$v ??
        new _$ListItem._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ListItem', 'title'),
            subTitle: BuiltValueNullFieldError.checkNotNull(
                subTitle, r'ListItem', 'subTitle'),
            colorCode: BuiltValueNullFieldError.checkNotNull(
                colorCode, r'ListItem', 'colorCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
