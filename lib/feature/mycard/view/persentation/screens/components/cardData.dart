import 'package:flutter/material.dart';
import '../../../../../../core/utils/appStyles.dart';
import '../../../../../../core/utils/colorsInApp.dart';
class cardData extends StatelessWidget {
  final String subTitle, mainTitle;

  const cardData({super.key, required this.subTitle, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subTitle,
          style: AppStyle.regular18.copyWith(
            fontSize: 8,
            color: AppColor.black70,
          ),
        ),
        Text(mainTitle, style: AppStyle.medium14),
      ],
    );
  }
}