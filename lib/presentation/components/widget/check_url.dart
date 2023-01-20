import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/movie_details_list.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/series_details_list.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/trailer_not_available.dart';
import 'package:marvel_cinematic_universe/presentation/screens/movie_details_screen.dart';
import 'package:marvel_cinematic_universe/presentation/screens/series_details_screen.dart';

Widget checkUrl(
    {required String url, required dynamic detailsData, required String flag}) {
  if (flag == movieFlag) {
    if (url == '') {
      return trailerNotAvailable(
        title: detailsData.title!,
        widget: movieDetailsList(detailsData),
      );
    } else {
      return MovieDetailsScreen(
        movie: detailsData,
        url: url,
      );
    }
  } else if (flag == seriesFlag) {
    if (url == '') {
      return trailerNotAvailable(
          title: detailsData.title!, widget: seriesDetailsList(detailsData));
    } else {
      return SeriesDetailsScreen(
        series: detailsData,
        url: url,
      );
    }
  } else {
    return Text('Wrong Routing');
  }
}
