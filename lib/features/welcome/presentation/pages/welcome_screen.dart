import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true ,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Welcome To Authentication",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.sp,
              color: AppColor.cPrimaryColor),
        ),
      ),
      body: const BodyWelcome(),
    );
  }
}
