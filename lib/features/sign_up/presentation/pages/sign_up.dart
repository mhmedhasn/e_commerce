import 'package:e_commerce/config/routes/app_roates.dart';
import 'package:e_commerce/features/sign_up/data/data_sources/remote_data_sources.dart';
import 'package:e_commerce/features/sign_up/presentation/manager/cubit.dart';
import 'package:e_commerce/features/sign_up/presentation/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../widgets/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(RemoteDataSources()),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {
          if (state is SignUpLoadingStates) {
            showDialog(
              context: context,
              builder: (context) => Center(child: CircularProgressIndicator()),
            );
          } else if (state is SignUpErrorStates) {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text("Error"),
                      content: Text(state.failures.message ?? ''),
                    ));
          } else if (state is SignUpSuccessStates) {
            Navigator.pushNamed(context, Routes.homeScreen);
          }
        },
        builder: (context, state) {
          return  Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(color:AppColor.cPrimaryColor),
              backgroundColor:Colors.transparent,

              elevation: 0.0,
              centerTitle: true,
              title:const Text(
              "Sign Up",
              style: TextStyle(
                color: AppColor.cPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),),
            body: const Body(),
          );
        },
      ),
    );
  }
}
