import 'package:flutter/material.dart';

import '../../../../../../core/utils/colorsInApp.dart';

class ThankYouShape extends StatelessWidget {
  const ThankYouShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 672,
      decoration: BoxDecoration(
        color: AppColor.gray_light_thank_you,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
