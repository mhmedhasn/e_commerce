import 'package:e_commerce/features/login/data/data_sources/sign_in_data_sources.dart';
import 'package:e_commerce/features/login/data/repositories/sign_in_data_repo.dart';
import 'package:e_commerce/features/login/domain/repositories/sign_in_repo.dart';
import 'package:e_commerce/features/login/domain/use_cases/use_cases_login.dart';
import 'package:e_commerce/features/login/presentation/manager/sign_in_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInDataSources signInDataSources;

  SignInCubit(this.signInDataSources) : super(SignInInitStates());

  static SignInCubit get(context) => BlocProvider.of(context);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void signIn() async {
    emit(SignInLoadingStates());
    SignInDomainRepo signInDomainRepo = SignInDataRepo(signInDataSources);
    UseCasesSignIn useCasesSignIn = UseCasesSignIn(signInDomainRepo);
    // SignInUserData signInUserData = SignInUserData(
    //     password: passwordController.text, email: emailController.text);
    var result = await useCasesSignIn.call( "hesham55@gmail.com","Ahmed@123");

    result.fold((l) {
      emit(SignInErrorStates(l));
    }, (r) {
      emit(SignInSuccessStates(r));
    });
  }
}
