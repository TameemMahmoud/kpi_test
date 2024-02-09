import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static const mood = 'mood';

  static void setMood(bool isDark) {
    Hive.box(HiveHelper.mood).put(HiveHelper.mood, isDark);
  }

  static bool getMood() {
    return Hive.box(HiveHelper.mood).isNotEmpty
        ? Hive.box(HiveHelper.mood).get(HiveHelper.mood)
        : false;
  }
}
