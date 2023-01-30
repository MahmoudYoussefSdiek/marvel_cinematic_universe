import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/data_layer/model/movie.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/list_widget.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/movie_details_list.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieDetailsScreen extends StatefulWidget {
  final Movie movie;
  final String url;
  const MovieDetailsScreen({Key? key, required this.movie, required this.url})
      : super(key: key);

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
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
        // endAt: youtubePlayerController.metadata.duration.inSeconds,
      ),
    );
  }

  // @override
  // void deactivate() {
  //   youtubePlayerController.dispose();
  //   super.deactivate();
  // }

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
            title: Text(widget.movie.title!),
            backgroundColor: AppColors.mainColor,
          ),
          body: listWidget(
            widget: Column(
              children: [
                player,
                const SizedBox(
                  height: 8,
                ),
                movieDetailsList(widget.movie),
              ],
            ),
          ),
          backgroundColor: AppColors.secondaryColor,
        );
      },
    );
  }

  // @override
  // void dispose() {
  //   youtubePlayerController.dispose();
  //   super.dispose();
  // }
}
