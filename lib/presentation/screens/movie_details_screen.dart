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
  late YoutubePlayer youtubePlayer;
  late YoutubePlayerController youtubePlayerController;
  late String videoId;
  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.url)!;
    youtubePlayerController = YoutubePlayerController(initialVideoId: videoId);
    youtubePlayer = YoutubePlayer(controller: youtubePlayerController);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title!),
        backgroundColor: AppColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            youtubePlayer,
            listWidget(
              widget: movieDetailsList(widget.movie),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.secondaryColor,

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: listWidget(
      //     widget: Center(
      //       child: Column(
      //         children: [
      //           controller.value.isInitialized
      //               ? AspectRatio(
      //                   aspectRatio: controller.value.aspectRatio,
      //                   child: VideoPlayer(controller),
      //                 )
      //               : const Center(child: Text('video not here')),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
