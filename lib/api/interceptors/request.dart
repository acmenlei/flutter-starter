import 'package:dio/dio.dart';

// 请求拦截器
class RequestHanlder extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // ignore: avoid_print
    print('请求路径：${options.baseUrl}${options.path}');
    super.onRequest(options, handler);
  }
}
