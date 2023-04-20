import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';
import '../../../../../config.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, required this.textEditingController});

  late final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(24)),
      width: 230,
      height: 50,
      child: Row(
        children: [
          SizedBox(width: Config.padding),
          Icon(
            Icons.search_rounded,
            size: 28,
            color: Colors.grey,
          ),
          SizedBox(width: Config.padding / 2),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: Config.padding, top: Config.padding / 8),
              child: TextField(
                onSubmitted: (value) => context
                    .read<WeatherBloc>()
                    .add(WeatherEvent.findPlace(value: value)),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Enter a place...'),
                controller: textEditingController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
