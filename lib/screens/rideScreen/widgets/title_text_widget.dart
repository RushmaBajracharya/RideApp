import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const TitleTextWidget({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
