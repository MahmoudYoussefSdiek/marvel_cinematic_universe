import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  static const String route = moviesScreenRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies Screen'),
      ),
      body: const Center(
        child: Text('Movie List'),
      ),
    );
  }
}
