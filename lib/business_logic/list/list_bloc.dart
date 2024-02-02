import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../data/generator/list_data_source.dart';
import 'list_event.dart';
import 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final ListDataSource listDataSource;

  ListBloc({
    required this.listDataSource,
  }) : super(ListState.initial()) {
    on<FetchNextPageEvent>(getNextListPage);
  }

  void getNextListPage(
      FetchNextPageEvent event, Emitter<ListState> state) async {
    print('getNextListPage called');

  }

  Stream<ListState> mapEventToState(
      ListState currentState, ListEvent event) async* {
    print('mapEventToState');
    if (event is FetchNextPageEvent) {
      print('Stream Map');
      try {
        final nextPage = await listDataSource.getNextListPage();
        yield ListState.success(currentState.listItems + nextPage);
        print('Heelo');
        print(nextPage.length);
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
