import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/app/screens/weather_details_screen.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';
import 'package:weather/src/feature/search/repository/search_repository.dart';

import '../../../config.dart';
import '../../core/widgets/icon_widget.dart';
import '../../core/widgets/loading_widget.dart';
import '../../feature/search/widget/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final WeatherBloc _weatherBloc;

  TextEditingController _textController = TextEditingController();

  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();

    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    _weatherBloc = WeatherBloc(repository: context.read<SearchRepository>());
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return BlocProvider(
      create: (context) => _weatherBloc,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Visibility(
          visible: _connectionStatus == ConnectivityResult.wifi ||
              _connectionStatus == ConnectivityResult.mobile,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Config.padding, horizontal: Config.padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchWidget(textEditingController: _textController),
                Visibility(
                    visible: !isKeyboard,
                    replacement: SizedBox(
                      width: 80,
                      child: IconWidget(
                        icon: Icons.check,
                        onTap: () {
                          if (_textController.text.isNotEmpty)
                            _weatherBloc.add(WeatherEvent.findPlace(
                                value: _textController.text));
                        },
                      ),
                    ),
                    child: Row(
                      children: [
                        IconWidget(
                          icon: Icons.history_outlined,
                          onTap: () {
                            print('history');
                          },
                        ),
                        SizedBox(
                          width: Config.padding / 2,
                        ),
                        IconWidget(
                          icon: Icons.favorite_outline_rounded,
                          onTap: () {
                            print('favorite');
                          },
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        body: _connectionStatus == ConnectivityResult.wifi ||
                _connectionStatus == ConnectivityResult.mobile
            ? BlocListener<WeatherBloc, WeatherState>(
                listener: (context, state) {
                  if (state.status == WeatherStatus.success) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeatherDetails(
                              weatherDataModel: _weatherBloc.state.data!,
                            )));
                  }
                },
                child: BlocBuilder<WeatherBloc, WeatherState>(
                  builder: (context, state) {
                    if (state.status == WeatherStatus.loading) {
                      return LoadingWidget();
                    }
                    if (state.status == WeatherStatus.initial && !isKeyboard) {
                      return Center(
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Hello World!',
                              style: TextStyle(fontSize: 32)),
                          TextSpan(
                              text: '\nThis is simple weather app.',
                              style: TextStyle(color: Colors.white54)),
                        ])),
                      );
                    }
                    if (state.status == WeatherStatus.failure) {
                      return Center(
                        child: Text('Unable to get data...'),
                      );
                    }
                    if (state.status == WeatherStatus.searching) {
                      return Center(
                          child: Text(
                        state.name ?? '',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ));
                    }
                     return Center(
                          child: Text(
                        state.name ?? '',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ));
                  },
                ),
              )
            : Center(
                child: Text('Internet connection is lost...'),
              ),
      ),
    );
  }
}
