import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../config.dart';

/// Storage class which contains recently data
class Recently {
  Box<String>? storage;

  void initHive() async =>
      storage = await Hive.box<String>(Config.recentlyNameBox);

  get getRecently => storage?.values.toList() ?? [];

  List<String> setRecently(String value) {
    final isExist = storage?.values.contains(value) ?? false;

    if (!isExist) storage?.put(value, value);

    return getRecently;
  }

  List<String> deleteRecently(String value) {
    storage?.delete(value);

    return getRecently;
  }

  void clearAll() {
    storage?.clear();

    return getRecently;
  }
}
