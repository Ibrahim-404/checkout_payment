import 'package:flutter/material.dart';

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