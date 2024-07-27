import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_error_handler.dart';
import 'package:doc/core/networking/api_result.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/features/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>> login(
      {required FormData loginRequestBody}) async {
    try {
      final result = await _apiService.login(loginRequestBody);
      return ApiResult.success(result);
    } on DioException catch (error) {
      print("error ${error}");
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
