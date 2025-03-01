import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/appStyles.dart';

class CardInfoTile extends StatelessWidget {
  const CardInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        leading: SvgPicture.asset("assets/pictures/logo.svg"),
        title: Text("Sam Louis", style: AppStyle.regular18),
        subtitle: Text("Mastercard **78", style: AppStyle.semiBold14),
      ),
    );
  }
}