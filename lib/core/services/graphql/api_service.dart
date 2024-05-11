
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:store_app/core/app/contsants.dart';



part 'api_service.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;


}
