import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/check_connection/internet_cubit.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/data_controller/data_controller_cubit.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/show_loading_indicator.dart';
import 'package:marvel_cinematic_universe/presentation/screens/no_internet_screen.dart';
import 'package:marvel_cinematic_universe/presentation/screens/series_screen.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class SeriesLayout extends StatefulWidget {
  const SeriesLayout({Key? key}) : super(key: key);
  static const String route = seriesLayoutRoute;

  @override
  State<SeriesLayout> createState() => _SeriesLayoutState();
}

class _SeriesLayoutState extends State<SeriesLayout> {
  //List<dynamic> allSeries = [];

  @override
  void initState() {
    super.initState();
    //allSeries =
    AppRoute.dataControllerCubit.getAllData(getAllSeries);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Series Screen'),
        backgroundColor: AppColors.mainColor,
      ),
      body: buildSeriesList(),
    );
  }

  Widget buildSeriesList() {
    return BlocBuilder<DataControllerCubit, DataControllerState>(
      builder: (context, state) {
        if (state is SeriesLoaded) {
          // allSeries = AppRoute.dataControllerCubit.series;

          return BlocBuilder<InternetCubit, InternetState>(
            builder: (context, state) {
              if (state is ConnectedState) {
                return SeriesScreen(
                  length: AppRoute.dataControllerCubit.series.length,
                  data: AppRoute.dataControllerCubit.series,
                );
              } else {
                return NoInternetScreen();
              }
            },
          );
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }
}
