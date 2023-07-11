import 'package:equatable/equatable.dart';

class CategoriesOrBrandsEntities extends Equatable{
  int? results;
  List<DataEntities>? data;
  CategoriesOrBrandsEntities({
    this.results,
    this.data,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw [results,data];
}

class DataEntities extends Equatable {
  DataEntities({
    this.id,
    this.name,
    this.slug,
    this.image,

  });

  String? id;
  String? name;
  String? slug;
  String? image;

  @override
  // TODO: implement props
  List<Object?> get props => throw[id,name,slug,image];

}
