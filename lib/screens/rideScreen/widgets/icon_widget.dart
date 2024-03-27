import 'package:flutter/material.dart';
import '../../../utils/styles/app_styles.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;

  const IconWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: ClipOval(
        child: Icon(
          icon, // Pass the IconData directly
          color: Styles.orange,
        ),
      ),
    );
  }
}
