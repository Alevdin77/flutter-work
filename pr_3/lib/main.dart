import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'widgets/fact_view.dart';
import 'interceptors/logging_interceptor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupService();
  runApp(const FactApp());
}

void setupService() {
  GetIt.instance.registerLazySingleton<Dio>(() => Dio(
        BaseOptions(
          baseUrl: 'https://api.api-ninjas.com/v1/',
          headers: {'X-Api-Key': 'yyC4l82T6hRZYMLQMTCbkGctwG3bMQP6jg4YsSxK'},
        ),
      )
        ..interceptors.addAll([
          LoggingInterceptor(apiKey: 'yyC4l82T6hRZYMLQMTCbkGctwG3bMQP6jg4YsSxK'),
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            error: true,
          ),
        ]));
}

class FactApp extends StatelessWidget {
  const FactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Интересные факты',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FactView(),
    );
  }
}