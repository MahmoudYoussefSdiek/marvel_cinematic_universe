import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/check_connection/internet_cubit.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/show_loading_indicator.dart';
import 'package:marvel_cinematic_universe/presentation/screens/movies_screen.dart';
import 'package:marvel_cinematic_universe/presentation/screens/no_internet_screen.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class MoviesLayout extends StatefulWidget {
  const MoviesLayout({Key? key}) : super(key: key);
  static const String route = moviesLayoutRoute;

  @override
  State<MoviesLayout> createState() => _MoviesLayoutState();
}

class _MoviesLayoutState extends State<MoviesLayout> {
  // List<dynamic> allMovies = [];

  @override
  void initState() {
    super.initState();
    AppRoute.dataControllerCubit.getAllData(getAllMovies);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies List'),
        backgroundColor: AppColors.mainColor,
      ),
      body: buildMovieList(),
    );
  }

  Widget buildMovieList() {
    return BlocBuilder<DataControllerCubit, DataControllerState>(
      builder: (context, state) {
        if (state is MoviesLoaded) {
          // allMovies = (state).movies;
          return BlocBuilder<InternetCubit, InternetState>(
            builder: (context, state) {
              if (state is ConnectedState) {
                return MovieScreen(
                  length: AppRoute.dataControllerCubit.movies.length,
                  data: AppRoute.dataControllerCubit.movies,
                );
              } else {
                return NoInternetScreen();
              }
            },
          );
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }
}
