import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/end_point.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/sign_up/data/data_sources/sign_up_data_sources.dart';
import 'package:e_commerce/features/sign_up/data/models/SignUpModels.dart';
import 'package:e_commerce/features/sign_up/domain/entities/user_data.dart';

class RemoteDataSources implements SignUpDataSources {
  Dio dio = Dio();

  @override
  Future<Either<Failures,SignUpModels>> signUp(UserData userData) async {
    try {
      var response = await dio.post("${Constants.baseApiUrl}${EndPoint.signUp}",
          data: userData.toJson());
      SignUpModels signUpModels = SignUpModels.fromJson(response.data);
      return Right(signUpModels);
    } catch (e) {
      return Left(ServerFailures(e.toString()));
    }
  }

}
