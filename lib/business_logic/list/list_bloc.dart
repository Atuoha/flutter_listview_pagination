import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../data/generator/list_data_source.dart';
import 'list_event.dart';
import 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final ListDataSource listDataSource;

  ListBloc({
    required this.listDataSource,
  }) : super(ListState.initial());

  void getNextPage() {
    add(FetchNextPageEvent());
  }

  Stream<ListState> mapEventToState(
      ListState currentState, ListEvent event) async* {
    if (event is FetchNextPageEvent) {
      try {
        final nextPage = await listDataSource.getNextListPage();
        yield ListState.success(currentState.listItems + nextPage);
      } on NoNextPageException catch (_) {
        yield currentState.rebuild((b) => b..hasReachedEndOfResult = true);
      } catch (e) {
        if (kDebugMode) {
          print('An error occurred!');
        }
      }
    }
  }
}
