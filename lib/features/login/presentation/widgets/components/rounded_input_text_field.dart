import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';


class RoundedInputTextField extends StatelessWidget {
  const RoundedInputTextField({
    required this.textController,
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
          controller: textController,
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: AppColor. cPrimaryColor,
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
    ));
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      //height: size.height * 0.06,
      decoration: BoxDecoration(
        color: AppColor. cPrimaryLightColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: child,
    );
  }
}
