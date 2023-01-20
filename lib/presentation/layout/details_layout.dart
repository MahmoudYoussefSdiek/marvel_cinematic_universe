import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/check_url.dart';
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
      final movie = AppRoute.dataControllerCubit.movies[widget.index];
      final String url = AppRoute.dataControllerCubit
          .getTrailerUrl(widget.index, getMoviesUrls);
      return checkUrl(
        flag: movieFlag,
        url: url,
        detailsData: movie,
      );
    } else if (BlocProvider.of<DataControllerCubit>(context).state
        is SeriesLoaded) {
      final series = AppRoute.dataControllerCubit.series[widget.index];
      final String url = AppRoute.dataControllerCubit
          .getTrailerUrl(widget.index, getSeriesUrls);
      return checkUrl(
        flag: seriesFlag,
        url: url,
        detailsData: series,
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
