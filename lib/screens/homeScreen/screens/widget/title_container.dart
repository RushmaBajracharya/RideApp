import 'package:flutter/material.dart';
import 'package:internship_task/screens/homeScreen/screens/widget/multi_text_widget.dart';
import 'package:internship_task/screens/homeScreen/screens/widget/sub_title_text_widget.dart';
import 'package:internship_task/screens/rideScreen/widgets/title_text_widget.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextWidget(text: "Welcome, Prem!"),
        SmallTextWidget(text: "What service would you like to seek from"),
        MultiTextWidget(firstText: '365trips ', secondText: 'Today?'),
      ],
    );
  }
}
