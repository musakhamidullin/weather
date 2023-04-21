import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/src/app/screens/forecast_screen.dart';
import 'package:weather/src/core/models/weather_data.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

import '../../../config.dart';

class WeatherDetails extends StatefulWidget {
  const WeatherDetails({super.key});

  @override
  State<WeatherDetails> createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  final _now = DateTime.now();
  late Size _size;

  late final WeatherDataModel? _weatherDataModel;

  double _opacity = 0;

  @override
  void initState() {
    super.initState();
    
    _weatherDataModel = context.read<WeatherBloc>().state.data;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _size = MediaQuery.of(context).size;

    Future.delayed(const Duration(milliseconds: 250)).then((value){
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForecastScreen(namePlace: _weatherDataModel?.name ?? '',)));
              },
              child: Text(
                'Forecast',
                style: TextStyle(fontSize: Config.normalSize),
              ))
        ],
        centerTitle: true,
        title: Text(_weatherDataModel!.name ?? ''),
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
                          '\n${_weatherDataModel!.name}, ${_weatherDataModel!.sys?.country ?? ''}',
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
                              value:
                                  _weatherDataModel!.weather?.first.icon ?? ''),
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
                        '${_weatherDataModel!.main?.temp?.toStringAsFixed(0) ?? 0} °C',
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
                      'Feels like ${_weatherDataModel!.main?.feelsLike?.toStringAsFixed(0) ?? 0} °C, ${_weatherDataModel!.weather?.first.description}, ${_weatherDataModel!.weather?.first.main}',
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
                          'Humidity ${(_weatherDataModel!.main?.humidity ?? 0 * 100).toStringAsFixed(0)}%\nPressure ${_weatherDataModel!.main?.pressure ?? 0}hPa\nWind speed ${_weatherDataModel!.wind?.speed ?? 0}m/s',
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
