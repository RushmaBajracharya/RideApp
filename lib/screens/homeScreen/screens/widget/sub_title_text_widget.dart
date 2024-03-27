import 'package:flutter/material.dart';

class SmallTextWidget extends StatelessWidget {
  final String text;
  const SmallTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.8),
        fontSize: 14,
      ),
    );
  }
}
