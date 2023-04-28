import 'package:flutter/material.dart';


class Config {

  static const String recentlyNameBox = 'recently';

  //empty widget
  static const Widget emptyWidget = SizedBox.shrink();

  //background icon color
  static const Color backgroundIconColor = Colors.white38;


  // border raduis
  static const double activityBorderRadius = 25,
      smallBorderRadius = 12,
      padding = 16;


  // icon parsing
  static String getIcon({required String value}){
    return "https://openweathermap.org/img/wn/$value.png";
  }


  // text style
  static const double normalSize = 16, preBigSize = 26, bigSize = 32;
  static const Color textColor = Colors.white54;


  // urls
  static String searchUrl({required String value}){
    return 'https://api.openweathermap.org/data/2.5/weather?q=$value&appid=b0f89ea3da6f0039c5d5b733904697fb&units=metric';
  }

  static String forecastUrl({required String value}){
    return 'http://api.openweathermap.org/data/2.5/forecast?q=$value&appid=b0f89ea3da6f0039c5d5b733904697fb&units=metric';
  }
}
