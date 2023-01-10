import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => appRoute.generateRoute(settings),
    );
  }
}
