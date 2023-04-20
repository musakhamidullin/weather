import 'package:flutter/material.dart';

import '../../../config.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Colors.white38,
          ),
          SizedBox(height: Config.padding * 2,),
          Text('Find a local weather ⛅', style: TextStyle(
          
          ), )
        ],
      ),
    );
  }
}