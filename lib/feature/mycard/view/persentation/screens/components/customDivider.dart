import 'package:flutter/material.dart';

import '../../../../../../core/utils/colorsInApp.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 3,
      color: AppColor.gray,
      indent: 45,
      endIndent: 45,
    );
  }
}