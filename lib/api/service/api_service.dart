import 'package:flutter_sliver_test/api/models/list_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.codefather.cn/api')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('/post/list/page/vo')
  Future<PostModelList> getPosts(@Body() Map<String, dynamic> body);
}
