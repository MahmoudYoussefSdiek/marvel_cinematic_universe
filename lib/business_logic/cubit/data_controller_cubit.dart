import 'package:bloc/bloc.dart';
import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/data_layer/repository/fetch_data.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:meta/meta.dart';

part 'data_controller_state.dart';

class DataControllerCubit extends Cubit<DataControllerState> {
  final FetchData data;
  List<Movie> movies = [];
  List<Series> series = [];
  DataControllerCubit(this.data) : super(DataControllerInitial());

  List<dynamic> getAllData(String path) {
    if (path == getAllMovies) {
      if (movies.isNotEmpty) {
        emit(MoviesLoaded());
        return movies;
      } else {
        data.getAllData(path).then((allData) {
          for (int i = 0; i < allData.length; i++) {
            movies.add(allData[i]);
          }
          emit(MoviesLoaded());
        });
        return movies;
      }
    } else if (path == getAllSeries) {
      if (series.isNotEmpty) {
        emit(SeriesLoaded());
        return series;
      } else {
        data.getAllData(path).then((allData) {
          for (int i = 0; i < allData.length; i++) {
            series.add(allData[i]);
          }
          emit(SeriesLoaded());
        });
        return series;
      }
    } else {
      return [];
    }
  }

  String getTrailerUrl(int index, String type) {
    final urlsList = data.getTrailerUrl(type);
    if (index < urlsList.length) {
      return urlsList[index];
    } else {
      return 'null';
    }
  }
}
