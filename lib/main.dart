import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather/src/feature/forecast/repository/forecast_repository.dart';
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
  late final ForecastRepository _forecastRepository;
  late final WeatherBloc _weatherBloc;

  @override
  void initState() {
    super.initState();

    _forecastRepository = ForecastRepository();
    _searchRepository = SearchRepository();
    _weatherBloc = WeatherBloc(
        searchRepository: _searchRepository);
  }

  @override
  Widget build(BuildContext context) {
    return Provider<WeatherBloc>(
      create: (_) => _weatherBloc,
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
