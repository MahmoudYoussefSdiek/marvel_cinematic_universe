import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/data_layer/model/trailer_url.dart';
import 'package:marvel_cinematic_universe/data_layer/web_services/web_services.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';

class FetchData {
  final WebServices webServices;

  FetchData(this.webServices);

  Future<List<dynamic>> getAllData(String path) async {
    final data = await webServices.getAllData(path);
    if (path == getAllMovies) {
      return data.map((movie) => Movie.fromJson(movie)).toList();
    } else if (path == getAllSeries) {
      return data.map((series) => Series.fromJson(series)).toList();
    } else {
      return [];
    }
  }

  List<String> getTrailerUrl(String type) {
    final trailerUrl = TrailerUrl();
    if (type == getMoviesUrls) {
      return trailerUrl.moviesTrailerUrl;
    } else if (type == getSeriesUrls) {
      return trailerUrl.seriesTrailerUrl;
    } else {
      return ['null'];
    }
  }
}
