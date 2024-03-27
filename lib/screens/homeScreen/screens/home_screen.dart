import 'package:flutter/material.dart';
import 'package:internship_task/screens/homeScreen/screens/widget/app_bar_widget.dart';
import 'package:internship_task/screens/homeScreen/screens/widget/category_container.dart';
import 'package:internship_task/screens/homeScreen/screens/widget/image_slider_container.dart';
import 'package:internship_task/screens/homeScreen/screens/widget/title_container.dart';
import 'package:internship_task/utils/constants/categories.dart';
import 'package:internship_task/screens/rideScreen/widgets/title_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(),
                const SizedBox(height: 20),
                const TitleContainer(),
                const SizedBox(height: 20),
                const ImageSliderContainer(),
                const SizedBox(height: 20),
                const TitleTextWidget(text: "Categories"),
                const SizedBox(height: 20),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 30,
                  children: categories.entries.map((entry) {
                    final categoryName = entry.key;
                    final categoryImage = entry.value;
                    return CategoryContainer(
                        categoryImage: categoryImage,
                        categoryName: categoryName);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
