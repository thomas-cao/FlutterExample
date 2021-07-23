
import 'dart:ffi';

import 'package:dio/dio.dart';

 class HttpConfig {
 static final baseUrl = "https://baidu.com";
 static final int timeOut = 5000;
}


class HttpManager {

// 配置基础配置项
static final BaseOptions baseConfig = BaseOptions(baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeOut);
// 创建唯一请求对象
static final Dio manager = Dio(baseConfig);

static Future request<T>(String url, {String methods = "get", Map<String, dynamic> params = const {'': ''}}) async {
  final options = Options(method: methods);

  // 添加拦截器
  Interceptor ptor = InterceptorsWrapper(
   onRequest: (req, handle) {
      // return handle(req);
      print('开始请求数据');
   },
   onResponse: (rep, handle) {
     print('获取数据');
   },
   onError: (eror, handle) {
      print('请求失败了');
   }
  );

 manager.interceptors.add(ptor);
   // 重新设置错误
   try {
    Response response = await manager.request(url, queryParameters: params, options: options);
   return response.data;
   } on DioError catch(error) {
       return Future.error(error);
   }
}

}