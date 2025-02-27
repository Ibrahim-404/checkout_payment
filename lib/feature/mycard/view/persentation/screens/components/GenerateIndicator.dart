import 'package:flutter/material.dart';

import 'DotesIndicator.dart';

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