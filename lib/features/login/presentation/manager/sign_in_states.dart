import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/login/domain/entities/signin_entities.dart';

abstract class SignInStates {}

class SignInInitStates extends SignInStates {}

class SignInLoadingStates extends SignInStates {}

class SignInErrorStates extends SignInStates {
  Failures failures;

  SignInErrorStates(this.failures);
}

class SignInSuccessStates extends SignInStates {
  SignInEntities signInEntities;

  SignInSuccessStates(this.signInEntities);
}
