import 'package:flutter/material.dart';

class sideShape extends StatelessWidget {
  final bool whichSide;
  const sideShape({
    super.key, required this.whichSide,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 436,
        left:whichSide? -20 : null,
        right:whichSide==false? -20 : null,
        child:CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}
