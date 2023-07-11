import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/home/domain/entities/categories_or_brands_entities.dart';
import 'package:e_commerce/features/home/domain/repositories/home_domain_repo.dart';
import '../data_sources/home_data_sources.dart';

class HomeDataRepo implements HomeDomainRepo{
  HomeDataSources homeDataSources;

  HomeDataRepo(this.homeDataSources);

  @override
  Future<Either<Failures, CategoriesOrBrandsEntities>> getAllBrands() {
   return homeDataSources.getAllBrands();
  }

  @override
  Future<Either<Failures, CategoriesOrBrandsEntities>> getCategories() {
    return homeDataSources.getCategories();

  }


}