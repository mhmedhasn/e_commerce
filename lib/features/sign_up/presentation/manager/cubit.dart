import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/sign_up/data/data_sources/sign_up_data_sources.dart';
import 'package:e_commerce/features/sign_up/data/repositories/sign_up_data_repo.dart';
import 'package:e_commerce/features/sign_up/domain/entities/user_data.dart';
import 'package:e_commerce/features/sign_up/domain/repositories/sign_up_domain_repo.dart';
import 'package:e_commerce/features/sign_up/domain/use_cases/sign_up_use_case.dart';
import 'package:e_commerce/features/sign_up/presentation/manager/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpDataSources signUpDataSources;

  SignUpCubit(this.signUpDataSources) : super(SignUpInitStates());

  static SignUpCubit get(context) => BlocProvider.of(context);

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
  var emailController = TextEditingController();
  void signUp() async {
    emit(SignUpLoadingStates());
    SignUpDomainRepo signUpDomainRepo = SignUpDataRepo(signUpDataSources);
    SignUpUseCase signUpUseCase = SignUpUseCase(signUpDomainRepo);
    UserData userData = UserData(
        name: "Ahmed Abd Al-Muti",
        email:"ahmedmutti01@gmail.com",
        password:"Ahmed@123",
        rePassword:"Ahmed@123",
        phone:"01010700700"
    );
    var result = await signUpUseCase.call(userData);
    result.fold((l) {
      emit(SignUpErrorStates(l));
    }, (r) {
      SignUpSuccessStates(r);
    });
  }
}
