import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';

abstract class SignUpStates {}

class SignUpInitStates extends SignUpStates{}
class SignUpLoadingStates extends SignUpStates{}
class SignUpSuccessStates extends SignUpStates{
  SignUpEntity signUpEntity;
  SignUpSuccessStates(this.signUpEntity);

}
class SignUpErrorStates extends SignUpStates{

  Failures failures;

  SignUpErrorStates(this.failures);
}
