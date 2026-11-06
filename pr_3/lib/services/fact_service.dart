import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final service = GetIt.instance;

class FactService {
  Future<String> fetchFact() async {
    try {
      final response = await service<Dio>().get('/facts');
      final List<dynamic> facts = response.data as List<dynamic>;

      if (facts.isNotEmpty) {
        return facts[0]['fact'] as String;
      }
      return 'Факт не найден';
    } on DioException catch (e) {
      print('Ошибка API: ${e.message}');
      return 'Ошибка загрузки. Проверьте интернет.';
    } catch (e) {
      print('Неожиданная ошибка: $e');
      return 'Неизвестная ошибка';
    }
  }
}