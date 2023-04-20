import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/feature/search/repository/search_repository.dart';

import 'src/app/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Disable screen rotation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: RepositoryProvider(
          create: (context) => SearchRepository(),
          child: HomeScreen(),
        ));
  }
}
