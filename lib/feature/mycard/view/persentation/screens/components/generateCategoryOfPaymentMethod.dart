import 'package:flutter/material.dart';

import '../../../../../../core/utils/listOfPaymentMethod.dart';
import 'PaymentOption.dart';

class generateCategoryOfPaymentMethod extends StatelessWidget {
  const generateCategoryOfPaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
            (index) => PaymentOption(imageLink: paymentMethods[index]),
      ),
    );
  }
}
