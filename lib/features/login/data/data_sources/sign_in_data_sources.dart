import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/login/data/models/sign_in_models.dart';
import 'package:e_commerce/features/login/domain/entities/sign_in_user_data.dart';

abstract class SignInDataSources{

  Future<Either<Failures,SignInModels>>signIn( String email,String password );

}