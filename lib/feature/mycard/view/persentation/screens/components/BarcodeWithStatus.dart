import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/utils/appStyles.dart';
import '../../../../../../core/utils/colorsInApp.dart';
class BarcodeWithStatus extends StatelessWidget {
  const BarcodeWithStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/pictures/Barcode.svg"),
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 2,
              color: AppColor.green,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: Text(
              "PAID",
              textAlign: TextAlign.center,
              style: AppStyle.semiBold25.copyWith(color: AppColor.green),
            ),
          ),
        ),
      ],
    );
  }
}
