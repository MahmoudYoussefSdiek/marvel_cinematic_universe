import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/data_layer/repository/fetch_data.dart';
import 'package:marvel_cinematic_universe/data_layer/web_services/web_services.dart';

void main() {
  runApp(MarvelTvShow(
    appRoute: AppRoute(),
  ));
}

class MarvelTvShow extends StatelessWidget {
  final AppRoute appRoute;

  const MarvelTvShow({Key? key, required this.appRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppRoute.dataControllerCubit,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => appRoute.generateRoute(settings),
      ),
    );
  }
}
