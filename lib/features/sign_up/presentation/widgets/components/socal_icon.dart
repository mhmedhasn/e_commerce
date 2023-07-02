import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SocalIcon extends StatelessWidget {
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
    required this.iconColor,
  }) : super(key: key);

  final String iconSrc;
  final Color iconColor;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color:AppColor. cPrimaryColor,
          ),
          shape: BoxShape.circle,
          color:AppColor. cPrimaryLightColor,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
          color: iconColor,
        ),
      ),
    );
  }
}
