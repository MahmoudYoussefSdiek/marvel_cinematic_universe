import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/check_connection/internet_cubit.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller/data_controller_cubit.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<DataControllerCubit>(
          create: (context) => AppRoute.dataControllerCubit,
        ),
        BlocProvider<InternetCubit>(
          create: (context) => AppRoute.internetCubit,
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) => appRoute.generateRoute(settings),
        );
      }),
    );
  }
}
