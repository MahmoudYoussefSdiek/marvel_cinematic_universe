import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/data_layer/web_services/web_services.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';

class FetchData {
  final WebServices webServices;

  FetchData(this.webServices);
  Future<List<dynamic>> getAllData(String path) async {
    final data = await webServices.getAllData(path);
    if (path == getAllMovies) {
      return data.map((e) => Movie.fromJson(e)).toList();
    } else if (path == getAllSeries) {
      return data.map((e) => Series.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
