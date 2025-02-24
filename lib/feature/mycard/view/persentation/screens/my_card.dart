import 'package:flutter/material.dart';
import 'Payment Details.dart';
import 'components/CustomAppBar.dart';
import 'components/CustomElevateButton.dart';
import 'components/Pricing.dart';
import 'components/customDivider.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool canPop = ModalRoute.of(context)!.canPop;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Image.asset("assets/pictures/15549540_5623839 2.png"),
              SizedBox(height: 20),
              Pricing(title: "Order Subtotal", value: "\$42.97"),
              Pricing(title: "Discount", value: "\$0"),
              Pricing(title: "Shipping", value: "\$8"),
              SizedBox(height: 12),
              CustomDivider(),
              Pricing(title: "Total", value: "\$20.97"),
              CustomElevateButton(
                buttonName: "Complete Payment",
                click: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PaymentDetails();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
