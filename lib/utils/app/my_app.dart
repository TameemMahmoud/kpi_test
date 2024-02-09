
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/details_screen/presentation/view/details_screen.dart';
import '../../features/profile_screen/presentation/controller/theme_cubit/theme_cubit.dart';
import '../../features/profile_screen/presentation/controller/theme_cubit/theme_states.dart';
import '../../features/splash_screen/presentation/view/splash_screen.dart';
import '../helper/hive_helper.dart';
import '../theme_controller/theme_controller.dart';

var navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeStates>(builder: (context, state) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'KPI',
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(HiveHelper.getMood(), context),
          home: const SplashScreen(),
          routes: {
            DetailsScreen.routeName: (ctx) => const DetailsScreen(),
            // NotificationsScreen.routeName: (ctx) => NotificationsScreen(),
          },
        );
      }),
    );
  }
}
