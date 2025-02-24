import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'cardData.dart';
import 'cardNumber.dart';

class VisaCard extends StatelessWidget {
  final String imageLink;

  VisaCard({super.key, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/pictures/Credit.svg"),
        Positioned(
          top: 78.65,
          left: 20,
          child: cardNumber(),
        ),
        Positioned(
          top: 140.65,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cardData(subTitle: "Card Holder", mainTitle: "Rajesh"),
              SizedBox(width: 30),
              cardData(subTitle: "Expires", mainTitle: "07/29"),
              SizedBox(width: 30),
              cardData(subTitle: "CVV", mainTitle: "215"),
            ],
          ),
        ),
      ],
    );
  }
}


