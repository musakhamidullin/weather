import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/route/router.dart';
import 'package:weather/src/feature/search/bloc/weather_bloc.dart';

import '../../../config.dart';
import '../../core/widgets/icon_widget.dart';
import '../../core/widgets/loading_widget.dart';
import '../../feature/search/widget/search_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Visibility(
        visible: _connectionStatus == ConnectivityResult.wifi ||
            _connectionStatus == ConnectivityResult.mobile,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Config.padding, horizontal: Config.padding),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Config.padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text('Recently',
                        style: TextStyle(
                            fontSize: Config.preBigSize,
                            color: Config.textColor)),
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
                SizedBox(height: Config.padding),
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black45),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: Config.padding * 1.5))),
                          child: Row(
                            children: [
                              Text(
                                'Moscow',
                                style: TextStyle(fontSize: Config.normalSize),
                              ),

                              SizedBox(width: Config.padding / 2,),

                              GestureDetector(child: Icon(Icons.close), onTap: (){},)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Config.padding * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SearchWidget(textEditingController: _textController),
                    SizedBox(width: Config.padding,),
                    ElevatedButton(onPressed: (){
                       if (_textController.text.isNotEmpty) {
                            context.read<WeatherBloc>().add(
                                WeatherEvent.findPlace(
                                    value: _textController.text));
                          }
                    }, child: Text('Done'),
                    
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: Config.padding * 1.5, vertical: Config.padding))
                    ),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: _connectionStatus == ConnectivityResult.wifi ||
              _connectionStatus == ConnectivityResult.mobile
          ? BlocListener<WeatherBloc, WeatherState>(
              listener: (context, state) {
                if (state.status == WeatherStatus.success) {
                  context.router
                      .push(WeatherDetailsRoute(weatherDataModel: state.data));
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
