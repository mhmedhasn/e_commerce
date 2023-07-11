import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/login/presentation/widgets/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Login",
          style: TextStyle(
            color: AppColor.cPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body:const BodySignIn(),
    );
  }
}
