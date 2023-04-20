import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/models/weather_data.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

class WeatherDetails extends StatefulWidget {
  const WeatherDetails({super.key, required this.weatherDataModel});

  final WeatherDataModel weatherDataModel;

  @override
  State<WeatherDetails> createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.weatherDataModel.name ?? ''),
      ),
    );
  }
}