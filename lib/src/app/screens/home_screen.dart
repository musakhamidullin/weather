import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/route/router.dart';
import 'package:weather/src/feature/recently/model/recently.dart';
import 'package:weather/src/feature/recently/widget/recently_widget.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

import '../../../config.dart';
import '../../core/widgets/loading_widget.dart';
import '../../feature/recently/cubit/recently_cubit.dart';
import '../../feature/search/repository/search_repository.dart';
import '../../feature/search/widget/search_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _textController = TextEditingController();

  late final WeatherBloc _weatherBloc;
  late final RecentlyCubit _recentlyCubit;

  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();

    final recently = context.read<Recently>();
    _weatherBloc =
        WeatherBloc(searchRepository: SearchRepository());

    _recentlyCubit = RecentlyCubit(recently)..init();

    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _weatherBloc.close();
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
  void didChangeDependencies() {
    super.didChangeDependencies();

    isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
  }

  bool isKeyboardOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: _connectionStatus == ConnectivityResult.wifi ||
            _connectionStatus == ConnectivityResult.mobile,
        child: Padding(
          padding: const EdgeInsets.only(bottom: Config.padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocBuilder<RecentlyCubit, RecentlyState>(
                bloc: _recentlyCubit,
                builder: (context, state) => 
                state.recently.isNotEmpty ?
                RecentlyWidget(
                  weatherBloc: _weatherBloc,
                  recentlyCubit: _recentlyCubit,
                  recently: state.recently,
                ) : Config.emptyWidget,
              ),
              SizedBox(
                height: Config.padding * 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SearchWidget(
                    textEditingController: _textController,
                    onChanged: (String value) => _weatherBloc
                        .add(WeatherEvent.outPutToScreen(name: value)),
                    onSubmitted: (String value) {
                      _weatherBloc.add(WeatherEvent.findPlace(value: value));
                      _textController.text == '';
                    },
                  ),
                  SizedBox(
                    width: Config.padding,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_textController.text.isNotEmpty) {
                        _weatherBloc.add(WeatherEvent.findPlace(
                            value: _textController.text));

                        _textController.text == '';
                      }
                    },
                    child: Text('Done'),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: Config.padding * 1.5,
                            vertical: Config.padding))),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: _connectionStatus == ConnectivityResult.wifi ||
              _connectionStatus == ConnectivityResult.mobile
          ? BlocListener<WeatherBloc, WeatherState>(
              bloc: _weatherBloc,
              listener: (context, state) {
                if (state.status == WeatherStatus.success) {
                  context.router
                      .push(WeatherDetailsRoute(weatherDataModel: state.data));

                  _recentlyCubit.add(state.name!);
                }
              },
              child: BlocBuilder<WeatherBloc, WeatherState>(
                bloc: _weatherBloc,
                builder: (context, state) {
                  if (state.status == WeatherStatus.loading) {
                    return LoadingWidget();
                  }
                  if (state.status == WeatherStatus.initial &&
                      !isKeyboardOpen) {
                    return Center(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Hello World!',
                            style: TextStyle(fontSize: Config.bigSize)),
                        TextSpan(
                            text: '\nThis is simple weather app.',
                            style: TextStyle(color: Config.textColor)),
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
                          fontSize: Config.bigSize,
                          fontWeight: FontWeight.bold),
                    ));
                  }
                  return Center(
                      child: Text(
                    state.name ?? '',
                    style: TextStyle(
                        fontSize: Config.bigSize, fontWeight: FontWeight.bold),
                  ));
                },
              ),
            )
          : Center(
              child: Text('Internet connection is lost...'),
            ),
    );
  }
}
