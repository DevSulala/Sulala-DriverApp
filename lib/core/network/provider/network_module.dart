import 'package:dio/dio.dart';
// import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
// import 'package:dio_cookie_manager/dio_cookie_manager.dart';
// import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sulala_driver_app/core/config/app_config.dart';

@module
abstract class NetworkModule {
  @preResolve
  Future<Dio> dio(
      // CookieManager cookieManager
      AppConfig appConfig) async {
    // final prefs = await SharedPreferences.getInstance();
    final dio = Dio();
    dio.options.baseUrl = appConfig.baseUrl;
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    // headers['Authorization'] =
    //     'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE4NTQ0MjI3LCJpYXQiOjE3MTgzMjgyMjcsImp0aSI6ImFiZTE3NWVhN2FmYjQwYjlhNzYzOWQ3YmMwMjg5NmM4IiwidXNlcl9pZCI6OX0.SQFPILilssf9en_COQJknp07iG04JSGIeGKgK_eAWdE';
    // headers['Authorization'] =
    //     'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE4NzcwOTU2LCJpYXQiOjE3MTg1NTQ5NTYsImp0aSI6IjMwZTY1NWJlMjRlNDRlZTBhZTFkMTEzMWQwMTg5NzBiIiwidXNlcl9pZCI6MTV9.bPlx87rCwnQFJp3AJUsluBg1GrWRO_jIxeLTeS_Axu8';
    // final accessToken = prefs.getString('accessToken');
    // final expiration = prefs.getInt('accessTokenExpiration');
    // final now = DateTime.now();
    // if (expiration?.isBefore(now) == true ||
    //     accessToken?.expires?.isAtSameMomentAs(now) == true) {
    //   await refreshTokens();
    // }
    // headers['Authorization'] = 'Bearer $accessToken';

    dio.options.headers = headers;

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: false,
        responseHeader: false,
        requestBody: true,
        responseBody: true,
        request: true,
        error: true,
      ));
    }
    // dio.interceptors.add(cookieManager);
    return dio;
  }

  // @preResolve
  // Future<PersistCookieJar> provideCookieJar() async {
  //   final appDocDir = await getApplicationDocumentsDirectory();
  //   final appDocPath = appDocDir.path;
  //   return PersistCookieJar(
  //     ignoreExpires: true,
  //     storage: FileStorage("$appDocPath/.cookies/"),
  //   );
  // }

  // @preResolve
  // Future<CookieManager> provideCookieManager(PersistCookieJar cookieJar) async {
  //   return CookieManager(cookieJar);
  // }

  // Future<String> loadToken() async {
  //   // Replace with your token loading logic (e.g., secure storage, API call)
  //   // This example uses a placeholder value for demonstration purposes
  //   return 'YOUR_ACCESS_TOKEN';
  // }

  // @factoryMethod
  // bool setToken(String token) {
  //   getIt<Dio>().options.headers['Authorization'] = 'Bearer $token';
  //   return true;
  // }

  //  @singleton
  // Dio provideDioInstance(Future<Dio> dioFuture) {
  //   return dioFuture as Dio;
}

// final options = const CacheOptions(
//   store: MemCacheStore(),
//   policy: CachePolicy.request,
//   hitCacheOnErrorExcept: [401, 403],
//   maxStale: const Duration(days: 7),
//   priority: CachePriority.normal,
//   cipher: null,
//   keyBuilder: CacheOptions.defaultCacheKeyBuilder,
//   allowPostMethod: false,
// );

// // Add cache interceptor with global/default options
// final dio = Dio()..interceptors.add(DioCacheInterceptor(options: options));

@singleton
class NetworkService {
  final Dio _dio;

  NetworkService(this._dio);

  void setToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  Dio get dio => _dio;
}
