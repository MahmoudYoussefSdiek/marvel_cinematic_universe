import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/layout/movies_layout.dart';
import 'package:marvel_cinematic_universe/presentation/layout/series_layout.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String route = HomeLayoutRoute;
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
                Navigator.pushNamed(context, MoviesLayout.route);
              },
              child: const Text('Movies')),
          TextButton(
              onPressed: () async {
                Navigator.pushNamed(context, SeriesLayout.route);
              },
              child: const Text('Series')),
        ]),
      ),
    );
  }
}
