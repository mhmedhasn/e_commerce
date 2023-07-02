import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/sign_up/data/data_sources/sign_up_data_sources.dart';
import 'package:e_commerce/features/sign_up/data/models/SignUpModels.dart';
import 'package:e_commerce/features/sign_up/domain/entities/user_data.dart';

class LocalDataSources implements SignUpDataSources{
  @override
  Future<Either<Failures, SignUpModels>> signUp(UserData userData) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}