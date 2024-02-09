import 'package:flutter/material.dart';

class InfoLineWidget extends StatelessWidget {
  final String text;
  final Widget value;

  const InfoLineWidget({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(text)),
        Expanded(child: value),
      ],
    );
  }
}
