import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/details_item_list.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/list_widget.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

Widget trailerNotAvailable({
  required String title,
  required Widget widget,
}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title),
      backgroundColor: AppColors.mainColor,
    ),
    body: listWidget(
      widget: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          detailsItemList('Trailer', 'Upcoming'),
          widget,
        ],
      ),
    ),
    backgroundColor: AppColors.secondaryColor,
  );
}
