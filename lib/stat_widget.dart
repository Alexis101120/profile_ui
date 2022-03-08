import 'package:flutter/material.dart';

class StateWidget extends StatelessWidget {
  final String title;
  final String stat;
  const StateWidget({
    Key? key,
    required this.title,
    required this.stat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        Text(
          stat,
          style: const TextStyle(fontSize: 16.0),
        )
      ],
    ));
  }
}
