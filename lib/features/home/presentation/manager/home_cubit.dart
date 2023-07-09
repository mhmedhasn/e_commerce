import 'package:bloc/bloc.dart';

import 'package:e_commerce/features/home/data/repositories/home_data_repo.dart';
import 'package:e_commerce/features/home/domain/repositories/home_domain_repo.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_categories_use_cases.dart';
import 'package:e_commerce/features/home/presentation/manager/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_sources/home_data_sources.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeDataSources homeDataSources;

  HomeCubit(this.homeDataSources) : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of(context);

 void getCategories() async {
    emit(HomeLoadingState());
    HomeDomainRepo homeDomainRepo = HomeDataRepo(homeDataSources);
    GetCategoriesUseCases categoriesUseCases =
        GetCategoriesUseCases(homeDomainRepo);
    var result = await categoriesUseCases.call();
    result.fold((l) {
      emit(HomeErrorState());
    }, (r) {
      emit(HomeSuccessState());
    });
  }
}
