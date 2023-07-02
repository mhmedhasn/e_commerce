import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/sign_up/data/models/SignUpModels.dart';
import 'package:e_commerce/features/sign_up/domain/entities/user_data.dart';

abstract class SignUpDataSources {

  Future<Either<Failures,SignUpModels>>signUp(UserData userData);
}