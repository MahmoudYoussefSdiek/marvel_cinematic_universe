import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/data_item.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

Widget moviesListWidget() {
  return SingleChildScrollView(
    child: Container(
      color: AppColors.secondaryColor,
      child: Column(
        children: [
          buildMovies(),
        ],
      ),
    ),
  );
}

Widget buildMovies() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 2 / 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
    ),
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    padding: EdgeInsets.zero,
    itemBuilder: (context, index) {
      return const DataItem();
    },
  );
}
