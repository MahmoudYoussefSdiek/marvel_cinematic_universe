import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

Widget showLoadingIndicator() {
  return Center(
    child: CircularProgressIndicator(
      color: AppColors.mainColor,
    ),
  );
}
