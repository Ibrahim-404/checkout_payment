import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/utils/appStyles.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("My Card", style: AppStyle.medium25),
        centerTitle: true,
        leading:Navigator.canPop(context)?Center(child: SvgPicture.asset("assets/pictures/Arrow200.svg")):null);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);}