import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_cinematic_universe/business_logic/app_route.dart';
import 'package:marvel_cinematic_universe/business_logic/cubit/check_connection/internet_cubit.dart';
import 'package:marvel_cinematic_universe/presentation/components/constant.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/default_button.dart';
import 'package:marvel_cinematic_universe/presentation/layout/movies_layout.dart';
import 'package:marvel_cinematic_universe/presentation/layout/series_layout.dart';
import 'package:marvel_cinematic_universe/presentation/screens/no_internet_screen.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const String route = homeLayoutRoute;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  void initState() {
    super.initState();
    AppRoute.internetCubit.checkConnection();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: AppColors.mainColor,
        ),
        body: state is ConnectedState
            ? Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/allCharacter.jpg'),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultButton(context, 'Movies', MoviesLayout.route),
                      defaultButton(context, 'Series', SeriesLayout.route),
                    ],
                  ),
                ),
              )
            : NoInternetScreen(),
      );
    });
  }
}
