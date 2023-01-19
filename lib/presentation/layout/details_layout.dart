import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/movie_details_list.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/series_details_list.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/trailer_not_available.dart';
import 'package:marvel_cinematic_universe/presentation/screens/movie_details_screen.dart';
import 'package:marvel_cinematic_universe/presentation/screens/series_details_screen.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class DetailsLayout extends StatefulWidget {
  final int index;
  const DetailsLayout({Key? key, required this.index}) : super(key: key);
  static const String rout = detailsLayoutRout;

  @override
  State<DetailsLayout> createState() => _DetailsLayoutState();
}

class _DetailsLayoutState extends State<DetailsLayout> {
  @override
  Widget build(BuildContext context) {
    if (AppRoute.dataControllerCubit.state is MoviesLoaded) {
      final Movie movie = AppRoute.dataControllerCubit.movies[widget.index];
      final String url = AppRoute.dataControllerCubit
          .getTrailerUrl(widget.index, getMoviesUrls);
      return url == ''
          ? trailerNotAvailable(
              title: movie.title!,
              widget: movieDetailsList(movie),
            )
          : MovieDetailsScreen(
              movie: movie,
              url: url,
            );
    } else if (BlocProvider.of<DataControllerCubit>(context).state
        is SeriesLoaded) {
      final Series series = AppRoute.dataControllerCubit.series[widget.index];
      final String url = AppRoute.dataControllerCubit
          .getTrailerUrl(widget.index, getSeriesUrls);
      return url == ''
          ? trailerNotAvailable(
              title: series.title!,
              widget: seriesDetailsList(series),
            )
          : SeriesDetailsScreen(
              series: series,
              url: url,
            );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          backgroundColor: AppColors.mainColor,
        ),
        body: const Center(
          child: Text('Something Went Wrong'),
        ),
      );
    }
  }
}
