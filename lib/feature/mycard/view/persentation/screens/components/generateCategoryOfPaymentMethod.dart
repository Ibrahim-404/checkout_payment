import 'package:flutter/material.dart';

import '../../../../../../core/utils/listOfPaymentMethod.dart';
import 'PaymentOption.dart';

class generateCategoryOfPaymentMethod extends StatefulWidget {
  const generateCategoryOfPaymentMethod({
    super.key,
  });

  @override
  State<generateCategoryOfPaymentMethod> createState() => _generateCategoryOfPaymentMethodState();
}

class _generateCategoryOfPaymentMethodState extends State<generateCategoryOfPaymentMethod> {

 int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
            (index) => GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: PaymentOption(imageLink: paymentMethods[index],isSelected:currentIndex == index ,)),
      ),
    );
  }
}
