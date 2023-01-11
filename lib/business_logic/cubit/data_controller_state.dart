part of 'data_controller_cubit.dart';

@immutable
abstract class DataControllerState {}

class DataControllerInitial extends DataControllerState {}

class MoviesLoaded extends DataControllerState {
  final List<dynamic> movies;
  MoviesLoaded(this.movies);
}

class SeriesLoaded extends DataControllerState {
  final List<dynamic> series;
  SeriesLoaded(this.series);
}
