import 'package:dio/dio.dart';
import 'package:flutter_sliver_test/api/models/post_model.dart';
import 'package:flutter_sliver_test/api/service/api_service.dart';

/// 最基础的请求配置
class Http {
  static late ApiService client;

  static init() {
    final dio = Dio();
    // dio 配置
    // 1、拦截器
    // 2、超时时间
    // 3、请求头
    // 4、请求参数
    // ...
    client = ApiService(dio);
  }

  /// 获取文章列表
  static Future<List<PostModel>?> get(params) async {
    try {
      final response = await client.getPosts(params);
      if (response.code == 0) {
        return response.data?.records;
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
