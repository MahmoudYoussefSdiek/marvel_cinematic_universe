import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/detailsItemList.dart';

Widget movieDetailsList(Movie movie) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        detailsItemList(itemReleaseDate, movie.releaseDate ?? upcoming),
        detailsItemList(itemBoxOffice,
            movie.boxOffice == '0' ? upcoming : movie.boxOffice!),
        detailsItemList(movieDuration,
            movie.duration == 0 ? upcoming : movie.duration.toString()),
        detailsItemList(itemOverview, movie.overview ?? upcoming),
        detailsItemList(itemDirectedBy,
            movie.directedBy == '' ? upcoming : movie.directedBy!),
        detailsItemList(itemPhase, movie.phase.toString()),
        detailsItemList(itemSaga, movie.saga ?? upcoming),
        detailsItemList(itemImdbId, movie.imdbId ?? upcoming),
      ],
    ),
  );
}
