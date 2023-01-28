import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/details_item_list.dart';

Widget movieDetailsList(Movie movie) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
    child: Column(
      children: [
        detailsItemList(itemTitle, movie.title ?? upcoming),
        detailsItemList(itemReleaseDate, movie.releaseDate ?? upcoming),
        detailsItemList(itemBoxOffice,
            movie.boxOffice == '0' ? upcoming : '${movie.boxOffice!} \$'),
        detailsItemList(
            movieDuration,
            movie.duration == 0
                ? upcoming
                : '${movie.duration.toString()} Min'),
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
