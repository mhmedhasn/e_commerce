import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'rounded_input_text_field.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: AppColor. cPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color:  AppColor.cPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
