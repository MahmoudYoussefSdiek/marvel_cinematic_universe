import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({Key? key}) : super(key: key);

  @override
  State<SeriesScreen> createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> {
  static const String route = seriesScreenRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Series Screen'),
      ),
      body: const Center(
        child: Text('Series List'),
      ),
    );
  }
}
