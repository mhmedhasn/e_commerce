import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/features/home/domain/entities/categories_or_brands_entities.dart';
import 'package:e_commerce/features/home/domain/repositories/home_domain_repo.dart';

class GetCategoriesUseCases {
  HomeDomainRepo homeDomainRepo;

  GetCategoriesUseCases(this.homeDomainRepo);

  Future<Either<Failures, CategoriesOrBrandsEntities>> call() =>
      homeDomainRepo.getCategories();
}
