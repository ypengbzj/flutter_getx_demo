import 'package:dio/dio.dart';
import 'package:flutter_getx_demo/modules/request/models/model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://httpbin.org/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/get')
  Future<HttpBinGetResponse> getResponse();
}
