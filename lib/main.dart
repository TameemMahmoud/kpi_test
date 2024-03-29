import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'utils/app/my_app.dart';
import 'utils/bloc_observer/bloc_observer.dart';
import 'utils/helper/hive_helper.dart';

late PackageInfo packageInfo;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Hive.initFlutter();
  await Hive.openBox(HiveHelper.mood);

  Bloc.observer = MyBlocObserver();
  packageInfo = await PackageInfo.fromPlatform();
  runApp(const MyApp());
}
