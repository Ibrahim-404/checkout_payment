import 'package:flutter/material.dart';

import '../../../../../../core/utils/colorsInApp.dart';

class CustomDivider extends StatelessWidget {
 final double indent,endIndent;
  const CustomDivider({super.key, required this.indent, required this.endIndent});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 3,
      color: AppColor.gray,
      indent: indent,
      endIndent: endIndent,
    );
  }
}