import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/end_point.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/home/data/models/CategoriesOrBrandsModels.dart';
import '../../../../core/utils/constants.dart';

abstract class HomeDataSources {
  Future<Either<Failures, CategoriesOrBrandsModels>> getCategories();

  Future<Either<Failures, CategoriesOrBrandsModels>> getAllBrands();
}

class HomeRemoteDTO implements HomeDataSources {
  Dio dio = Dio();

  @override
  Future<Either<Failures, CategoriesOrBrandsModels>> getAllBrands() async {
    try {
      var response =
          await dio.get("${Constants.baseApiUrl}${EndPoint.getAllBrands}");
      CategoriesOrBrandsModels models =
          CategoriesOrBrandsModels.fromJson(response.data);
      return Right(models);
    } catch (e) {
      return Left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoriesOrBrandsModels>> getCategories()async {
    try {
      var response =
          await dio.get("${Constants.baseApiUrl}${EndPoint.getAllCategories}");
      CategoriesOrBrandsModels models =
      CategoriesOrBrandsModels.fromJson(response.data);
      return Right(models);
    } catch (e) {
      return Left(ServerFailures(e.toString()));
    }
  }
}

class HomeLocaleDTO implements HomeDataSources {
  @override
  Future<Either<Failures, CategoriesOrBrandsModels>> getAllBrands() {
    // TODO: implement getAllBrands
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, CategoriesOrBrandsModels>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }
}
