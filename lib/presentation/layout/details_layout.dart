import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
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
      return MovieDetailsScreen(
        movie: movie,
        url: moviesUrl[widget.index],
      );
    } else if (BlocProvider.of<DataControllerCubit>(context).state
        is SeriesLoaded) {
      final Series series = AppRoute.dataControllerCubit.series[widget.index];
      return SeriesDetailsScreen(title: series.title!);
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
