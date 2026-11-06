import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  final String apiKey;

  LoggingInterceptor({required this.apiKey});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Автоматически добавляем токен (API Key) в заголовок
    options.headers['X-Api-Key'] = apiKey;
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('ERROR[${err.message}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}