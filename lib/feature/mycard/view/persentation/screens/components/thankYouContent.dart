import 'package:flutter/material.dart';

import '../../../../../../core/utils/appStyles.dart';
import 'CardInfoTile.dart';
import 'Pricing.dart';
import 'customDivider.dart';

class thankYouContent extends StatelessWidget {
  const thankYouContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text("thank you", style: AppStyle.medium25),
          Text("Your transaction was successful", style: AppStyle.regular18),
          SizedBox(height: 42),
          Pricing(title: "Date", value: "01/24/2023"),
          Pricing(title: "Time", value: "10:15 AM"),
          Pricing(title: "To", value: "Sam Louis"),
          CustomDivider(endIndent: 10, indent: 10),
          SizedBox(height: 20),
          Pricing(title: "Total", value: "\$50.97"),
          SizedBox(height: 20),
          CardInfoTile(),
          SizedBox(height: 20),
          CustomDivider(endIndent: 10, indent: 10),
        ],
      ),
    );
  }
}