import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/BarcodeWithStatus.dart';
import 'components/ThankYouShape.dart';
import 'components/sideShape.dart';
import 'components/successfulTransactionShape.dart';
import 'components/thankYouContent.dart';

class ThankYouScreenPaymentDetails extends StatelessWidget {
  const ThankYouScreenPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  child: SvgPicture.asset("assets/pictures/Arrow200.svg"),
                  onTap: () => Navigator.pop(context),
                ),
              ),
              SizedBox(height: 30),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  ThankYouShape(),
                  sideShape(whichSide: true),
                  sideShape(whichSide: false),
                  successfulTransactionShape(),
                  Positioned(
                    top: 55,
                    left: 0,
                    right: 0,
                    child: thankYouContent(),
                  ),
                  Positioned(
                    top: screenHeight * 0.6,
                    left: screenWidth * 0.1, // Centered horizontally
                    right: screenWidth * 0.1,
                    child: BarcodeWithStatus(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
