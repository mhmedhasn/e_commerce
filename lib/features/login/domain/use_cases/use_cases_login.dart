import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/login/domain/entities/sign_in_user_data.dart';
import 'package:e_commerce/features/login/domain/entities/signin_entities.dart';
import 'package:e_commerce/features/login/domain/repositories/sign_in_repo.dart';

class UseCasesSignIn{
  SignInDomainRepo signInDomainRepo;

  UseCasesSignIn(this.signInDomainRepo);

  Future<Either<Failures,SignInEntities>> call(String email,String password )=>signInDomainRepo.signIn(email,password );
}