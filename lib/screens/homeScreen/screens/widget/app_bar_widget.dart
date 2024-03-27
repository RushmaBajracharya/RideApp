import 'package:flutter/material.dart';
import 'package:internship_task/utils/constants/image_strings.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Image.asset(TImages.logoImg),
          const Spacer(),
          Image.asset(TImages.userProfile),
        ],
      ),
    );
  }
}
