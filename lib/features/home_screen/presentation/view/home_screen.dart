import 'package:flutter/material.dart';
import 'package:kpi_test/features/details_screen/presentation/view/details_screen.dart';
import 'package:kpi_test/utils/resources/app_assets.dart';
import 'package:kpi_test/utils/resources/app_colors.dart';

import '../../../../common_widgets/fade_animation.dart';
import '../../../../common_widgets/header_widget.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_first_widget.dart';
import 'widgets/home_recent_work_widget.dart';
import 'widgets/home_table_widget.dart';
import 'widgets/home_time_tracking_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: CustomScrollView(
        slivers: <Widget>[
          const HomeAppBar(),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.only(
                      top: 80, right: 20, left: 20, bottom: 20),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     FadeAnimation( 0.4 , HeaderWidget(
                        'Due for PMS Tracker',
                      ),),
                  FadeAnimation( 0.6 , SizedBox(height: 300, child: HomeTableWidget()),),
                  FadeAnimation( 0.8 ,  HeaderWidget(
                        'Time Tracking',
                      ),),
                  FadeAnimation( 1 ,  SizedBox(
                        height: 140,
                        child: HomeTimeTrackerWidget(),
                      ),),
                      SizedBox(
                        height: 17,
                      ),
                  FadeAnimation( 1.2 , HeaderWidget(
                        'Recent Work Orders',
                      ),),
                  FadeAnimation( 1.4 , HomeRecentWork(),),
                    ],
                  ),
                ),
            const FadeAnimation( 0.2 , SizedBox(
                  height: 100,
                  child: HomeFirstWidget(),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
