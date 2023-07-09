import 'package:e_commerce/features/home/domain/entities/categories_or_brands_entities.dart';

class CategoriesOrBrandsModels extends CategoriesOrBrandsEntities {
  Metadata? metadata;

  CategoriesOrBrandsModels({
    super.results,
    this.metadata,
    super.data,
  });

  CategoriesOrBrandsModels.fromJson(dynamic json) {
    results = json['results'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
}

class Data extends DataEntities {
  Data({
    super.id,
    super.name,
    super.slug,
    super.image,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  String? createdAt;
  String? updatedAt;
}

class Metadata {
  int? currentPage;
  int? numberOfPages;
  int? limit;

  Metadata({
    this.currentPage,
    this.numberOfPages,
    this.limit,
  });

  Metadata.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }
}
