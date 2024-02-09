import 'package:flutter/material.dart';
import 'package:kpi_test/utils/resources/app_assets.dart';

import '../../../../../utils/resources/app_colors.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  late ScrollController _scrollController;
  var top = 0.0;
  @override
  void initState() {

    super.initState();
    _scrollController =ScrollController();
    _scrollController.addListener(() {setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      automaticallyImplyLeading: false,
      elevation: 4,
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            top = constraints.biggest.height;
            return FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              title: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(AppAssets.appLogo, height: 45,),
                  )),
              background:const AppBarBackground(),
            );
          }),
    );
  }
}


class AppBarBackground extends StatelessWidget {
  const AppBarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Card(
          //       clipBehavior: Clip.antiAliasWithSaveLayer,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(14),
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Image.asset(AppAssets.appLogo, height: 45,),
          //       )),
          // ),
          const SizedBox(
            height: 17,
          ),
          const Text(
            'Hi Cloyd Hirang,',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const Text(
            'You are logged in as/ an Supervisor',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
