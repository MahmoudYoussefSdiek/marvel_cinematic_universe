import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

Widget listWidget({
  required Widget widget,
}) {
  return SingleChildScrollView(
    child: Container(
      color: AppColors.secondaryColor,
      child: widget,
    ),
  );
}
