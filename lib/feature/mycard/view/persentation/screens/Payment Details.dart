import 'package:checkout_payment/feature/mycard/view/persentation/screens/components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'components/GenerateVisa.dart';
import 'components/generateCategoryOfPaymentMethod.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            generateCategoryOfPaymentMethod(),
            SizedBox(height: 20),
            GenerateVisa(),
          ],
        ),
      ),
    );
  }
}
class DotesIndicator extends StatelessWidget {
  final bool isActive;
  const DotesIndicator({super.key, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width:isActive? 11: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:isActive? Color(0xFFd9c392) : Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
class GenerateIndicator extends StatelessWidget {
  final int length, currentindex;
  const GenerateIndicator({super.key, required this.length, required this.currentindex});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(length, (index) => Padding(
          padding: const EdgeInsets.only(right: 2),
          child: DotesIndicator(isActive: index == currentindex,),
        )));
  }
}
