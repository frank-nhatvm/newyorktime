import 'package:get_it/get_it.dart';
import 'package:newyorktimes/screens/home/home_model.dart';
import 'package:newyorktimes/services/home_service.dart';

final getIt = GetIt.instance;

void setupLocator(){

  getIt.registerLazySingleton(() => HomeModel());
  getIt.registerLazySingleton(() => HomeService());

}