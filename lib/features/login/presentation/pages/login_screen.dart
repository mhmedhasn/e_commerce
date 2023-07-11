import 'package:e_commerce/config/routes/app_roates.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/login/data/data_sources/remote_data_sources.dart';
import 'package:e_commerce/features/login/presentation/manager/sign_in_cubit.dart';
import 'package:e_commerce/features/login/presentation/manager/sign_in_states.dart';
import 'package:e_commerce/features/login/presentation/widgets/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(SignInRemoteDataSources()),
      child: BlocConsumer<SignInCubit,SignInStates>(
        listener: (context, state) {   if (state is SignInLoadingStates) {
          showDialog(
            context: context,
            builder: (context) => Center(child: CircularProgressIndicator()),
          );
        } else if (state is SignInErrorStates) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Error"),
                content: Text(state.failures.message ?? ''),
              ));
        } else if (state is SignInSuccessStates) {
          Navigator.pushNamed(context, Routes.homeScreen);
        }},
        builder: (context, state) {
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
            body: const BodySignIn(),
          );
        },
      ),
    );
  }
}
