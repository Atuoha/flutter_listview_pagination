// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListState extends ListState {
  @override
  final BuiltList<ListItem> listItems;
  @override
  final bool hasReachedEndOfResult;

  factory _$ListState([void Function(ListStateBuilder)? updates]) =>
      (new ListStateBuilder()..update(updates))._build();

  _$ListState._({required this.listItems, required this.hasReachedEndOfResult})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(listItems, r'ListState', 'listItems');
    BuiltValueNullFieldError.checkNotNull(
        hasReachedEndOfResult, r'ListState', 'hasReachedEndOfResult');
  }

  @override
  ListState rebuild(void Function(ListStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStateBuilder toBuilder() => new ListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListState &&
        listItems == other.listItems &&
        hasReachedEndOfResult == other.hasReachedEndOfResult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listItems.hashCode);
    _$hash = $jc(_$hash, hasReachedEndOfResult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListState')
          ..add('listItems', listItems)
          ..add('hasReachedEndOfResult', hasReachedEndOfResult))
        .toString();
  }
}

class ListStateBuilder implements Builder<ListState, ListStateBuilder> {
  _$ListState? _$v;

  ListBuilder<ListItem>? _listItems;
  ListBuilder<ListItem> get listItems =>
      _$this._listItems ??= new ListBuilder<ListItem>();
  set listItems(ListBuilder<ListItem>? listItems) =>
      _$this._listItems = listItems;

  bool? _hasReachedEndOfResult;
  bool? get hasReachedEndOfResult => _$this._hasReachedEndOfResult;
  set hasReachedEndOfResult(bool? hasReachedEndOfResult) =>
      _$this._hasReachedEndOfResult = hasReachedEndOfResult;

  ListStateBuilder();

  ListStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listItems = $v.listItems.toBuilder();
      _hasReachedEndOfResult = $v.hasReachedEndOfResult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListState;
  }

  @override
  void update(void Function(ListStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListState build() => _build();

  _$ListState _build() {
    _$ListState _$result;
    try {
      _$result = _$v ??
          new _$ListState._(
              listItems: listItems.build(),
              hasReachedEndOfResult: BuiltValueNullFieldError.checkNotNull(
                  hasReachedEndOfResult,
                  r'ListState',
                  'hasReachedEndOfResult'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listItems';
        listItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
