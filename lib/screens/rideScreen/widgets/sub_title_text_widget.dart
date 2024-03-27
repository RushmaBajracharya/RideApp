import 'package:flutter/material.dart';

class SubTitleTextWidget extends StatelessWidget {
  final String text;
  const SubTitleTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
