import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/data_layer/model/series.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/list_widget.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/series_details_list.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//  SeriesDetailsScreen
class SeriesDetailsScreen extends StatefulWidget {
  final Series series;
  final String url;
  const SeriesDetailsScreen({Key? key, required this.series, required this.url})
      : super(key: key);

  @override
  State<SeriesDetailsScreen> createState() => _SeriesDetailsScreenState();
}

class _SeriesDetailsScreenState extends State<SeriesDetailsScreen> {
  late YoutubePlayerController youtubePlayerController;
  late String videoId;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.url)!;
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
      ),
    );
  }

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: youtubePlayerController,
          showVideoProgressIndicator: true,
          progressIndicatorColor: AppColors.widgetColor,
          progressColors: ProgressBarColors(
            playedColor: AppColors.widgetColor,
            handleColor: AppColors.widgetColor,
          ),
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.series.title!),
              backgroundColor: AppColors.mainColor,
            ),
            body: listWidget(
              widget: Column(
                children: [
                  player,
                  const SizedBox(
                    height: 8,
                  ),
                  seriesDetailsList(widget.series),
                ],
              ),
            ),
            backgroundColor: AppColors.secondaryColor,
          );
        });
  }
}
