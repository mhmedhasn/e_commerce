import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/login/data/data_sources/sign_in_data_sources.dart';
import 'package:e_commerce/features/login/domain/entities/sign_in_user_data.dart';
import 'package:e_commerce/features/login/domain/entities/signin_entities.dart';
import 'package:e_commerce/features/login/domain/repositories/sign_in_repo.dart';

class SignInDataRepo implements SignInDomainRepo {
  SignInDataSources signInDataSources;

  SignInDataRepo(this.signInDataSources);

  @override
  Future<Either<Failures, SignInEntities>> signIn(
      String email,String password ) =>
      signInDataSources.signIn(email,password);
}
