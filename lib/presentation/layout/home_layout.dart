import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/layout/movies_layout.dart';
import 'package:marvel_cinematic_universe/presentation/layout/series_layout.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String route = HomeLayoutRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/allCharacter.jpg'),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, MoviesLayout.route);
                  },
                  child: const Text(
                    'Movies',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, SeriesLayout.route);
                  },
                  child: const Text(
                    'Series',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
