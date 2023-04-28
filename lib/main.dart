import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:provider/provider.dart';
import 'package:weather/src/feature/recently/model/recently.dart';
import 'package:weather/src/core/route/router.dart';

import 'config.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox<String>(Config.recentlyNameBox);
  
  /// Disable screen rotation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final Recently _recently = Recently()..initHive();
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Provider<Recently>(
      create: (_) => _recently,
      child: MaterialApp.router(
        theme: ThemeData.dark(useMaterial3: true),
        routerConfig: _router.config(),
      ),
    );
  }
}
