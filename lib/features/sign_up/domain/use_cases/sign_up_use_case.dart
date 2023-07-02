import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';
import 'package:e_commerce/features/sign_up/domain/entities/user_data.dart';
import 'package:e_commerce/features/sign_up/domain/repositories/sign_up_domain_repo.dart';

class SignUpUseCase {
  SignUpDomainRepo signUpDomainRepo;

  SignUpUseCase(this.signUpDomainRepo);

  Future<Either<Failures, SignUpEntity>> call(UserData userData) => signUpDomainRepo.signUp(userData);
}
