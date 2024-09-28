import 'package:actor/core/network/dio_factory.dart';
import 'package:actor/core/network/network.dart';
import 'package:actor/feature/people/cubit/person_cubit.dart';
import 'package:actor/feature/people/data/repository/person_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<RestClient>(() => RestClient(dio));

  // Person
  getIt.registerLazySingleton<PersonRepo>(() => PersonRepo(getIt()));
  getIt.registerFactory<PersonCubit>(() => PersonCubit(getIt()));

  //Media

  //image

  //home

  //search
}
