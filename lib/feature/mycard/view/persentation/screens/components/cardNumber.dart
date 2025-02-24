import 'package:flutter/material.dart';

import '../../../../../../core/utils/appStyles.dart';

class cardNumber extends StatelessWidget {
  const cardNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("1234", style: AppStyle.semiBold14),
        SizedBox(width: 10),
        Text("5678", style: AppStyle.semiBold14),
        SizedBox(width: 10),
        Text("1234", style: AppStyle.semiBold14),
        SizedBox(width: 10),
        Text("5678", style: AppStyle.semiBold14),
      ],
    );
  }
}