// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:internship_task/utils/constants/colors.dart';
import 'package:internship_task/screens/rideScreen/widgets/sub_title_text_widget.dart';
import 'package:internship_task/screens/rideScreen/widgets/title_text_widget.dart';

class ImageSliderContainer extends StatefulWidget {
  const ImageSliderContainer({super.key});

  @override
  _ImageSliderContainerState createState() => _ImageSliderContainerState();
}

class _ImageSliderContainerState extends State<ImageSliderContainer> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: TColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TitleTextWidget(
            text: "Your image goes here",
            color: Colors.white,
            fontSize: 24,
          ),
          const SizedBox(height: 10),
          const SubTitleTextWidget(
            text: "365rides is the airport\npickup and drop service.",
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => _buildIndicator(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index
            ? Colors.white
            : Colors.white.withOpacity(0.5),
      ),
    );
  }
}
