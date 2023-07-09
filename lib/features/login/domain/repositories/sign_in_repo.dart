import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/login/domain/entities/sign_in_user_data.dart';
import 'package:e_commerce/features/login/domain/entities/signin_entities.dart';

abstract class SignInDomainRepo{

   Future<Either<Failures,SignInEntities>>signIn(String email,String password  );
}