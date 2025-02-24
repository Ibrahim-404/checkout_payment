import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/appStyles.dart';

class Pricing extends StatelessWidget {
  final String title, value;

  const Pricing({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style:title=="Total"?AppStyle.semiBold25 :AppStyle.regular18),
          Text(value, style:title=="Total"?AppStyle.semiBold25 :AppStyle.regular18),
        ],
      ),
    );
  }
}