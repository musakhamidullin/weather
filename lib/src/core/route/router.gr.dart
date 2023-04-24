// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ForecastRoute.name: (routeData) {
      final args = routeData.argsAs<ForecastRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ForecastScreen(
          key: args.key,
          namePlace: args.namePlace,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    WeatherDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WeatherDetailsScreen(
          key: args.key,
          weatherDataModel: args.weatherDataModel,
        ),
      );
    },
  };
}

/// generated route for
/// [ForecastScreen]
class ForecastRoute extends PageRouteInfo<ForecastRouteArgs> {
  ForecastRoute({
    Key? key,
    required String namePlace,
    List<PageRouteInfo>? children,
  }) : super(
          ForecastRoute.name,
          args: ForecastRouteArgs(
            key: key,
            namePlace: namePlace,
          ),
          initialChildren: children,
        );

  static const String name = 'ForecastRoute';

  static const PageInfo<ForecastRouteArgs> page =
      PageInfo<ForecastRouteArgs>(name);
}

class ForecastRouteArgs {
  const ForecastRouteArgs({
    this.key,
    required this.namePlace,
  });

  final Key? key;

  final String namePlace;

  @override
  String toString() {
    return 'ForecastRouteArgs{key: $key, namePlace: $namePlace}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WeatherDetailsScreen]
class WeatherDetailsRoute extends PageRouteInfo<WeatherDetailsRouteArgs> {
  WeatherDetailsRoute({
    Key? key,
    required WeatherDataModel? weatherDataModel,
    List<PageRouteInfo>? children,
  }) : super(
          WeatherDetailsRoute.name,
          args: WeatherDetailsRouteArgs(
            key: key,
            weatherDataModel: weatherDataModel,
          ),
          initialChildren: children,
        );

  static const String name = 'WeatherDetailsRoute';

  static const PageInfo<WeatherDetailsRouteArgs> page =
      PageInfo<WeatherDetailsRouteArgs>(name);
}

class WeatherDetailsRouteArgs {
  const WeatherDetailsRouteArgs({
    this.key,
    required this.weatherDataModel,
  });

  final Key? key;

  final WeatherDataModel? weatherDataModel;

  @override
  String toString() {
    return 'WeatherDetailsRouteArgs{key: $key, weatherDataModel: $weatherDataModel}';
  }
}
