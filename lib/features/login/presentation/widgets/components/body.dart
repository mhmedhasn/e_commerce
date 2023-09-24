import 'package:e_commerce/features/sign_up/presentation/pages/sign_up.dart';
import 'package:e_commerce/features/sign_up/presentation/widgets/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../sign_up/presentation/widgets/components/background.dart';
import 'already_have_an_acount_check.dart';
import 'rounded_input_text_field.dart';
import 'rounded_password_field.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputTextField(
              hintText: "Your email",
              onChanged: (value) {},
              icon: Icons.person,
            ),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAcountCheck(
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
