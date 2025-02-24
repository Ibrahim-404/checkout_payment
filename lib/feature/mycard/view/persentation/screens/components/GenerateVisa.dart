import 'package:flutter/material.dart';
import '../Payment Details.dart';
import 'VisaCard.dart';

class GenerateVisa extends StatefulWidget {
  const GenerateVisa({super.key});

  @override
  State<GenerateVisa> createState() => _GenerateVisaState();
}

class _GenerateVisaState extends State<GenerateVisa> {
  int currentIndex = 0;
  final PageController _pageController = PageController(viewportFraction: 0.75);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (mounted) {
        setState(() {
          currentIndex = (_pageController.page ?? 0).toInt(); // ✅ Fix potential null issue
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 326 / 192,
          child: PageView.builder(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Center(
                  child: VisaCard(imageLink: "assets/pictures/Credit.svg"),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        GenerateIndicator(length:3, currentindex:currentIndex ),
      ],
    );
  }
}
