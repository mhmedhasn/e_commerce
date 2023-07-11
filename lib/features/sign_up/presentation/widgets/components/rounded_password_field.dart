import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'rounded_input_text_field.dart';

class RoundedPasswordField extends StatelessWidget {
  String hintPass="";
  final ValueChanged<String> onChanged;
  final TextEditingController TextController;
   RoundedPasswordField({
     required this.TextController,
    required this.hintPass,
    Key? key,
    required this.onChanged,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: TextController,
        obscureText: true,
        onChanged: onChanged,
        decoration:  InputDecoration(
          hintText: hintPass,
          icon: const Icon(
            Icons.lock,
            color: AppColor.cPrimaryColor,
          ),
          suffixIcon:const Icon(
            Icons.visibility,
            color: AppColor.cPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
