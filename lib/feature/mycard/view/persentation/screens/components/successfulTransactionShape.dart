import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/colorsInApp.dart';

class successfulTransactionShape extends StatelessWidget {
  const successfulTransactionShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      right: 0,
      left: 0,
      child: CircleAvatar(
        backgroundColor: AppColor.gray_light_thank_you,
        radius: 50,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: AppColor.green,
          child: SvgPicture.asset("assets/pictures/successfulTransaction.svg"),
        ),
      ),
    );
  }
}