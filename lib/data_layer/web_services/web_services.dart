import 'package:dio/dio.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';

class WebServices {
  late Dio dio;
  WebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllData(String path) async {
    try {
      Response response = await dio.get(path);
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
