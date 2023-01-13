import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget showLoadingIndicator() {
  return const Center(
    // child: CircularProgressIndicator(
    //   color: AppColors.mainColor,
    // ),
    child: SpinKitSpinningLines(
      color: Colors.red,
      size: 50.0,
    ),
  );
}
