import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/core/networking/dio_factory.dart';
import 'package:doc/features/home/data/repos/home_repo.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/ui/manager/cubit/login_cubit.dart';
import 'package:doc/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc/features/sign_up/ui/manager/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  // sign up
  getIt
      .registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt<ApiService>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepo>()));
  // home screen
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt<ApiService>()));
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepo>()));
}
