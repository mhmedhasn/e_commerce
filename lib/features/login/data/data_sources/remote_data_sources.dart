import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/end_point.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/login/data/data_sources/sign_in_data_sources.dart';
import 'package:e_commerce/features/login/data/models/sign_in_models.dart';
import 'package:e_commerce/features/login/domain/entities/sign_in_user_data.dart';

class SignInRemoteDataSources implements SignInDataSources {
  Dio dio = Dio();

  @override
  Future<Either<Failures, SignInModels>> signIn( String email,String password
      ) async {
    try {
      var response = await dio.post("${Constants.baseApiUrl}${EndPoint.signIn}",
          data:  {
            'password':password,
            'email':email,
          });
      SignInModels signInModels = SignInModels.fromJson(response);
      return Right(signInModels);
    } catch (e) {
      return Left(ServerFailures(e.toString()));
    }
  }
}
