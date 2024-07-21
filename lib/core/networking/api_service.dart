import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_constants.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
}










//  abstract class with the @RestApi annotation.
// This annotation tells Retrofit to generate the implementation of the API service interface.
// factory constructor allows for the creation of an instance of _ApiService,
// The optional baseUrl parameter allows you to override the base URL defined in ApiConstants.baseURL if needed.