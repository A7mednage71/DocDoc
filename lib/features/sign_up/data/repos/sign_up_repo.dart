import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_error_handler.dart';
import 'package:doc/core/networking/api_result.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/features/sign_up/data/models/sign_up_response_body.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponseBody>> signUp(
      {required FormData signUpRequestBody}) async {
    try {
      final result = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(result);
    } on DioException catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
