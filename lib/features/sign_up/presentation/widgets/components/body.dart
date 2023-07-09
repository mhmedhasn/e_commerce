import 'package:e_commerce/features/login/presentation/pages/login_screen.dart';
import 'package:e_commerce/features/sign_up/presentation/manager/cubit.dart';
import 'package:e_commerce/features/sign_up/presentation/widgets/components/already_have_an_acount_check.dart';
import 'package:e_commerce/features/sign_up/presentation/widgets/components/rounded_button.dart';
import 'package:e_commerce/features/sign_up/presentation/widgets/components/rounded_input_text_field.dart';
import 'package:e_commerce/features/sign_up/presentation/widgets/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'background.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.08),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.25,


              ),
              // SizedBox(height: size.height * 0.12),

              RoundedInputTextField(
                textController: SignUpCubit.get(context).nameController,
                hintText: "Name",
                onChanged: (value) {
                  return null;

                },
                icon: Icons.drive_file_rename_outline,
              ),
              RoundedInputTextField(
                textController: SignUpCubit.get(context).emailController,
                hintText: "Examble@gmail.com",
                onChanged: (value) {},
                icon: Icons.person,
              ),
              RoundedPasswordField(
                  textController: SignUpCubit.get(context).passwordController,
                  hintPass: "Password",onChanged: (value) { return null;}),
              RoundedPasswordField(
                  textController: SignUpCubit.get(context).rePasswordController,
                  hintPass: "RePassword",onChanged: (value) { return null;}),
              RoundedInputTextField(
                textController:SignUpCubit.get(context).phoneController,
                hintText: "Phone",
                onChanged: (value) { return null;},
                icon: Icons.phone,
              ),
              RoundedButton(
                text: "Sign Up",
                press: () {
                  SignUpCubit.get(context).signUp();
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAcountCheck(
                login: false,
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
              ),
              // const OrDivider(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     SocalIcon(
              //       iconSrc: "assets/icons/facebook.svg",
              //       press: () {},
              //       iconColor: const Color(0xFF4267B2),
              //     ),
              //     SocalIcon(
              //       iconSrc: "assets/icons/twitter.svg",
              //       press: () {},
              //       iconColor: const Color(0xFF1DA1F2),
              //     ),
              //     SocalIcon(
              //       iconSrc: "assets/icons/google-plus.svg",
              //       press: () {},
              //       iconColor: const Color(0xFFEA4335),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
