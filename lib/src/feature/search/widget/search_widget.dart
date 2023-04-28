import 'package:flutter/material.dart';
import '../../../../../config.dart';

// ignore: must_be_immutable
class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, required this.textEditingController, required this.onChanged, required this.onSubmitted});

  late final TextEditingController textEditingController;

  final Function(String value) onChanged;
  final Function(String value) onSubmitted;

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
                onChanged: onChanged,
                onSubmitted: onSubmitted,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Name of place'),
                controller: textEditingController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
