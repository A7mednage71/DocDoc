import 'package:dio/dio.dart';
import 'package:doc/core/helpers/app_constants.dart';
import 'package:doc/core/helpers/secure_storage_helper.dart';
import 'package:doc/core/networking/dio_factory.dart';
import 'package:doc/features/login/data/models/login_request_body.dart';
import 'package:doc/features/login/data/models/login_response_model.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/ui/manager/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

  Future<void> login({required LoginRequestBody loginRequestBody}) async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(
        loginRequestBody: FormData.fromMap(loginRequestBody.toJson()));
    result.when(
      success: (data) async {
        await saveToken(data);
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.failure(errormessage: error.apiErrorModel.message));
      },
    );
  }

  Future<void> saveToken(LoginResponseModel data) async {
    await SecureStorageHelper.setSecuredData(
        SharedPrefKeys.userToken, data.userData.token);
    DioFactory.refreshHeaders(token: data.userData.token);
  }
}
