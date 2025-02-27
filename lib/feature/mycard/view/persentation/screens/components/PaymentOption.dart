import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/colorsInApp.dart';

class PaymentOption extends StatelessWidget {
  String imageLink;
  bool isSelected ;

  PaymentOption({super.key, required this.imageLink, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 103,
      child: AspectRatio(
        aspectRatio: 103 / 62,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 1.5,
              color:isSelected? AppColor.green : AppColor.black70,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(child: SvgPicture.asset(imageLink)),
        ),
      ),
    );
  }
}
