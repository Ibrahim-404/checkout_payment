import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/utils/appStyles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? ontap;
  const CustomAppBar({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text("My Card", style: AppStyle.medium25),
      centerTitle: true,
      leading:
          Navigator.canPop(context)
              ? Center(
                child: GestureDetector(
                  child: SvgPicture.asset("assets/pictures/Arrow200.svg"),
                  onTap:ontap ,
                ),
              )
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
