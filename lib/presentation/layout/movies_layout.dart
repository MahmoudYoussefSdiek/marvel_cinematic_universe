import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/show_loading_indicator.dart';
import 'package:marvel_cinematic_universe/presentation/screens/movie_screen.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class MoviesLayout extends StatefulWidget {
  const MoviesLayout({Key? key}) : super(key: key);
  static const String route = MoviesLayoutRoute;

  @override
  State<MoviesLayout> createState() => _MoviesLayoutState();
}

class _MoviesLayoutState extends State<MoviesLayout> {
  List<dynamic> allMovies = [];

  @override
  void initState() {
    super.initState();
    allMovies =
        BlocProvider.of<DataControllerCubit>(context).getAllData(getAllMovies);
  }

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
          allMovies = (state).movies;

          return MovieScreen(
            length: allMovies.length,
            data: allMovies,
          );
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }
}
