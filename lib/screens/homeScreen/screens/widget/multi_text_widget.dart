import 'package:flutter/material.dart';

class MultiTextWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  const MultiTextWidget({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              color: Colors.grey.withOpacity(0.8),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
