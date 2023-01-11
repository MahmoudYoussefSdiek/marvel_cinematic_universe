import 'package:bloc/bloc.dart';
import 'package:marvel_cinematic_universe/data_layer/repository/fetch_data.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:meta/meta.dart';

part 'data_controller_state.dart';

class DataControllerCubit extends Cubit<DataControllerState> {
  final FetchData data;
  late List<dynamic> movies;
  late List<dynamic> series;
  DataControllerCubit(this.data) : super(DataControllerInitial());

  List<dynamic> getAllData(String path) {
    if (path == getAllMovies) {
      data.getAllData(path).then((allData) {
        emit(MoviesLoaded(allData));
        movies = allData;
      });
      return movies;
    } else if (path == getAllSeries) {
      data.getAllData(path).then((allData) {
        emit(SeriesLoaded(allData));
        series = allData;
      });
      return series;
    } else {
      return [];
    }
  }
}
