import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  const HeaderWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
