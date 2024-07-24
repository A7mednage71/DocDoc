import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/core/networking/dio_factory.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/ui/manager/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}
