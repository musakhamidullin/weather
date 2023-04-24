import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app/screens/forecast_screen.dart';
import '../../app/screens/home_screen.dart';
import '../../app/screens/weather_details_screen.dart';
import '../models/weather_data.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/'),
        AutoRoute(page: WeatherDetailsRoute.page, path: '/weather_details'),
        AutoRoute(page: ForecastRoute.page, path: '/weather_details/forecast')
      ];
}
