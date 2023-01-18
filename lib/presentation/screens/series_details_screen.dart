import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/list_widget.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class SeriesDetailsScreen extends StatelessWidget {
  final String title;
  const SeriesDetailsScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.mainColor,
      ),
      body: listWidget(
        widget: Center(
          child: Column(
            children: const [
              Text('series info'),
            ],
          ),
        ),
      ),
    );
  }
}
