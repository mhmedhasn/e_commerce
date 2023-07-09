import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/home/domain/entities/categories_or_brands_entities.dart';

abstract class HomeDomainRepo{


 Future<Either<Failures,CategoriesOrBrandsEntities>> getCategories();
 Future<Either<Failures,CategoriesOrBrandsEntities>> getAllBrands();

}