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
        name: nameController.text,
        email:emailController.text,
        password:passwordController.text,
        rePassword:rePasswordController.text,
        phone:phoneController.text,
    );
    var result = await signUpUseCase.call(userData);
    result.fold((l) {
      emit(SignUpErrorStates(l));
    }, (r) {
    emit(SignUpSuccessStates(r));
    });
  }
}
