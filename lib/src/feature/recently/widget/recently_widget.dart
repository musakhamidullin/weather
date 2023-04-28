import 'package:flutter/material.dart';
import 'package:weather/src/feature/recently/cubit/recently_cubit.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

import '../../../../config.dart';

class RecentlyWidget extends StatelessWidget {
  const RecentlyWidget({super.key, required this.recently, required this.recentlyCubit, required this.weatherBloc});

  final List<String> recently;
  final RecentlyCubit recentlyCubit;
  final WeatherBloc weatherBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Config.padding),
          child: Row(
            children: [
              Text('Recently',
                  style: TextStyle(
                      fontSize: Config.preBigSize, color: Config.textColor)),
              SizedBox(
                width: Config.padding / 2,
              ),
              Icon(
                Icons.history,
                size: 32,
                color: Config.textColor,
              ),
            ],
          ),
        ),
        SizedBox(height: Config.padding),
        Padding(
          padding: const EdgeInsets.only(left: Config.padding),
          child: SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recently.length,
              itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.only(right: Config.padding),
                    child: ElevatedButton(
                      onPressed: () {
                        weatherBloc.add(WeatherEvent.findPlace(value: recently[i]));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black45),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                              horizontal: Config.padding * 1.5))),
                      child: Row(
                        children: [
                          Text(
                            recently[i],
                            style: TextStyle(fontSize: Config.normalSize),
                          ),
                          SizedBox(
                            width: Config.padding / 2,
                          ),
                          GestureDetector(
                            child: Icon(Icons.close),
                            onTap: () => recentlyCubit.delete(recently[i]),
                          )
                        ],
                      ),
                    ),
                  ),),
          )
        ),
      ],
    );
  }
}
