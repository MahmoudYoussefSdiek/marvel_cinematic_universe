import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/details_item_list.dart';

Widget seriesDetailsList(Series series) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
    child: Column(
      children: [
        detailsItemList(itemTitle, series.title ?? upcoming),
        detailsItemList(itemReleaseDate, series.releaseDate ?? upcoming),
        detailsItemList(lastAiredDate, series.lastAiredDate ?? upcoming),
        detailsItemList(season, series.season.toString()),
        detailsItemList(
            numberEpisodes,
            series.numberEpisodes == 0
                ? upcoming
                : series.numberEpisodes.toString()),
        detailsItemList(itemOverview, series.overview ?? upcoming),
        detailsItemList(itemDirectedBy, series.directedBy ?? upcoming),
        detailsItemList(itemPhase, series.phase.toString()),
        detailsItemList(itemSaga, series.saga ?? upcoming),
        detailsItemList(itemImdbId, series.imdbId ?? upcoming),
      ],
    ),
  );
}
