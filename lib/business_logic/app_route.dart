import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/data_layer/repository/fetch_data.dart';
import 'package:marvel_cinematic_universe/data_layer/web_services/web_services.dart';
import 'package:marvel_cinematic_universe/presentation/layout/home_screen.dart';
import 'package:marvel_cinematic_universe/presentation/layout/movies_screen.dart';
import 'package:marvel_cinematic_universe/presentation/layout/series_screen.dart';

class AppRoute {
  static late FetchData fetchData; // repository we will pass it to Cubit
  static late DataControllerCubit
      dataControllerCubit; // Cubit but we need to pass repository to Cubit

  AppRoute() {
    fetchData = FetchData(WebServices());
    dataControllerCubit = DataControllerCubit(fetchData);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case MoviesScreen.route:
        return MaterialPageRoute(builder: (_) => const MoviesScreen());

      case SeriesScreen.route:
        return MaterialPageRoute(builder: (_) => const SeriesScreen());

      default:
        return null;
      // return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
