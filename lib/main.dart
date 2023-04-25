import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather/src/core/route/router.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';
import 'package:weather/src/feature/search/repository/search_repository.dart';

import 'src/app/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
  late final SearchRepository _searchRepository;
  late final WeatherBloc _weatherBloc;

  final _router = AppRouter();

  @override
  void initState() {
    super.initState();

    _searchRepository = SearchRepository();
    _weatherBloc = WeatherBloc(searchRepository: _searchRepository);
  }

  @override
  Widget build(BuildContext context) {
    return Provider<WeatherBloc>(
      create: (_) => _weatherBloc,
      child: MaterialApp.router(
        theme: ThemeData.dark(
          useMaterial3: true
        ),
        routerConfig: _router.config(),
      ),
    );
  }
}
