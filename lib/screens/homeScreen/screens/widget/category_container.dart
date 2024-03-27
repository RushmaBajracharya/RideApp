import 'package:flutter/material.dart';
import 'package:internship_task/screens/rideScreen/widgets/title_text_widget.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.categoryImage,
    required this.categoryName,
  });

  final String categoryImage;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            categoryImage,
          ),
          TitleTextWidget(
            text: categoryName,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
