import 'package:get_it/get_it.dart';
import 'package:sunum/view/counter_view.dart';
import 'package:sunum/view_model/view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() =>ViewModel());
}
