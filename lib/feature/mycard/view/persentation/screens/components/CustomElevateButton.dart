import 'package:flutter/material.dart';

import '../../../../../../core/utils/appStyles.dart';
import '../../../../../../core/utils/colorsInApp.dart';

class CustomElevateButton extends StatelessWidget {
  final String buttonName;
  void Function()? click;

  CustomElevateButton({super.key, required this.buttonName, this.click});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: click,
        style: ElevatedButton.styleFrom(backgroundColor: AppColor.green),
        child: Text(buttonName, style: AppStyle.medium25),
      ),
    );
  }
}