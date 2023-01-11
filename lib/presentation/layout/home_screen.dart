import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/data_layer/repository/fetch_data.dart';
import 'package:marvel_cinematic_universe/data_layer/web_services/web_services.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';

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
                FetchData data = FetchData(WebServices());
                final list = await data.getAllData(getAllMovies);
                print(list[0].overview);
              },
              child: const Text('Movies')),
          TextButton(
              onPressed: () async {
                FetchData data = FetchData(WebServices());
                var list = await data.getAllData(getAllSeries);
                print(list[0].title);
              },
              child: const Text('Series')),
        ]),
      ),
    );
  }
}
