import 'package:get_it/get_it.dart';
import 'package:listview_pagination/business_logic/list/list_bloc.dart';
import 'package:listview_pagination/data/generator/list_data_source.dart';

GetIt getIt = GetIt.instance;

void initGetX() {
  getIt.registerLazySingleton(() => ListDataSource());
  getIt.registerLazySingleton(() => ListBloc(listDataSource: getIt()));
}
