import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/sign_up/data/data_sources/sign_up_data_sources.dart';
import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';
import 'package:e_commerce/features/sign_up/domain/entities/user_data.dart';
import 'package:e_commerce/features/sign_up/domain/repositories/sign_up_domain_repo.dart';

class SignUpDataRepo implements SignUpDomainRepo{
  SignUpDataSources signUpDataSources;
  SignUpDataRepo(this.signUpDataSources);
  @override
  Future<Either<Failures, SignUpEntity>> signUp(UserData userData)=>signUpDataSources.signUp( userData);
}