import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/src/core/models/weather_data.dart';
import 'package:weather/src/core/route/router.dart';

import '../../../config.dart';

@RoutePage()
class WeatherDetailsScreen extends StatefulWidget {
  const WeatherDetailsScreen({super.key, required this.weatherDataModel});

  final WeatherDataModel? weatherDataModel;

  @override
  State<WeatherDetailsScreen> createState() => _WeatherDetailsScreenState();
}

class _WeatherDetailsScreenState extends State<WeatherDetailsScreen> {
  final _now = DateTime.now();
  late Size _size;

  double _opacity = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _size = MediaQuery.of(context).size;

    Future.delayed(const Duration(milliseconds: 250)).then((value) {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                context.router.push(ForecastRoute(
                    namePlace: widget.weatherDataModel?.name ?? ''));
              },
              child: Text(
                'Forecast',
                style: TextStyle(fontSize: Config.normalSize),
              ))
        ],
        centerTitle: true,
        title: Text(widget.weatherDataModel!.name ?? ''),
      ),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 1000),
        child: Center(
          child: SizedBox(
            height: 300,
            width: _size.width - Config.padding * 2,
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(Config.padding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text:
                          '${DateFormat.MMMd().format(_now)}, ${DateFormat.Hm().format(_now)}',
                      style: TextStyle(color: Colors.orange),
                    ),
                    TextSpan(
                      text:
                          '\n${widget.weatherDataModel!.name}, ${widget.weatherDataModel!.sys?.country ?? ''}',
                      style: TextStyle(fontSize: Config.bigSize),
                    ),
                  ])),
                  SizedBox(
                    height: Config.padding,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Config.backgroundIconColor,
                            borderRadius: BorderRadius.circular(
                                Config.smallBorderRadius)),
                        child: CachedNetworkImage(
                          imageUrl: Config.getIcon(
                              value: widget
                                      .weatherDataModel!.weather?.first.icon ??
                                  ''),
                          placeholder: (context, url) =>
                              CircularProgressIndicator(
                            color: Config.textColor,
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      SizedBox(
                        width: Config.padding,
                      ),
                      Text(
                        '${widget.weatherDataModel!.main?.temp?.toStringAsFixed(0) ?? 0} °C',
                        style: TextStyle(fontSize: Config.bigSize),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Config.padding,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Feels like ${widget.weatherDataModel!.main?.feelsLike?.toStringAsFixed(0) ?? 0} °C, ${widget.weatherDataModel!.weather?.first.description}, ${widget.weatherDataModel!.weather?.first.main}',
                      style: TextStyle(
                          fontSize: Config.normalSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: Config.padding,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 1,
                        height: 80,
                        decoration: BoxDecoration(color: Colors.orange),
                      ),
                      SizedBox(
                        width: Config.padding,
                      ),
                      SizedBox(
                        child: Text(
                          'Humidity ${(widget.weatherDataModel!.main?.humidity ?? 0 * 100).toStringAsFixed(0)}%\nPressure ${widget.weatherDataModel!.main?.pressure ?? 0}hPa\nWind speed ${widget.weatherDataModel!.wind?.speed ?? 0}m/s',
                          style: TextStyle(
                              fontSize: Config.normalSize, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
