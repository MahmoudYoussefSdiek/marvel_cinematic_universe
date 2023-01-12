import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/layout/movies_screen.dart';
import 'package:marvel_cinematic_universe/presentation/layout/series_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = homeScreenRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(children: [
          TextButton(
              onPressed: () async {
                Navigator.pushNamed(context, MoviesScreen.route);
              },
              child: const Text('Movies')),
          TextButton(
              onPressed: () async {
                Navigator.pushNamed(context, SeriesScreen.route);
              },
              child: const Text('Series')),
        ]),
      ),
    );
  }
}
