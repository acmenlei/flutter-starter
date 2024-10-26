import 'package:dio/dio.dart';
import 'package:flutter_sliver_test/api/interceptors/request.dart';
import 'package:flutter_sliver_test/api/interceptors/response.dart';
import 'package:flutter_sliver_test/api/models/post_model.dart';
import 'package:flutter_sliver_test/api/service/api_service.dart';

/// 最基础的请求配置
class Http {
  static final Dio _dio = Dio();

  static final ApiService client = ApiService(_dio);

  static void init() {
    _dio.interceptors.add(RequestHanlder());
    _dio.interceptors.add(ResponseHandler());
  }

  /// 获取文章列表
  static Future<List<PostModel>?> get(params) async {
    try {
      final response = await client.getPosts(params);
      if (response.code == 0) {
        return response.data.records;
      }
      return null;
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }
}
