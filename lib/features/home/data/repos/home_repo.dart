import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_error_handler.dart';
import 'package:doc/core/networking/api_result.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';

class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);

  Future<ApiResult<AllspecializationResponseModel>>
      getAllSpecialization() async {
    try {
      var result = await _apiService.getAllSpecialization();
      return ApiResult.success(result);
    } on DioException catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
