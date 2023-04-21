import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/feature/forecast/bloc/forecast_bloc.dart';
import 'package:weather/src/feature/forecast/repository/forecast_repository.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

import '../../../config.dart';
import '../../core/widgets/loading_widget.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({super.key, required this.namePlace});

  final String namePlace;

  @override
  State<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  late final ForecastRepository _forecastRepository;
  late final ForecastBloc _forecastBloc;

  @override
  void initState() {
    super.initState();

    _forecastRepository = ForecastRepository();
    _forecastBloc = ForecastBloc(_forecastRepository);

    _forecastBloc.add(ForecastEvent.getForecast(namePlace: widget.namePlace));
  }

  @override
  void dispose() {
    _forecastBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.namePlace),
      ),
      body: BlocBuilder<ForecastBloc, ForecastState>(
        bloc: _forecastBloc,
        builder: (context, state) {
          if (state.status == WeatherStatus.success) {
            return ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) => Card(
                        child: Padding(
                      padding: const EdgeInsets.all(Config.padding / 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${state.data[index].date}'),
                          Container(
                            decoration: BoxDecoration(
                                color: Config.backgroundIconColor,
                                borderRadius: BorderRadius.circular(
                                    Config.smallBorderRadius)),
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: Config.getIcon(
                                      value: state.data[index].list.first
                                              .weather!.last.icon ??
                                          ''),
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(
                                    color: Config.textColor,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: Config.padding / 2),
                                  child: Text(
                                      '${state.data[index].maxTemp.toStringAsFixed(0)} / ${state.data[index].minTemp.toStringAsFixed(0)} °C'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )));
          }
          return Center(child: LoadingWidget());
        },
      ),
    );
  }
}
