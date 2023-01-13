import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/list_widget.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/widget_builder.dart';

class SeriesScreen extends StatelessWidget {
  const SeriesScreen({
    Key? key,
    required this.length,
    required this.data,
  }) : super(key: key);
  final int length;
  final List<dynamic> data;

  @override
  Widget build(BuildContext context) {
    return listWidget(
      widget: widgetBuilder(
        length: length,
        data: data,
      ),
    );
  }
}
