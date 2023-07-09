import 'package:bloc/bloc.dart';

import 'package:e_commerce/features/home/data/repositories/home_data_repo.dart';
import 'package:e_commerce/features/home/domain/repositories/home_domain_repo.dart';
import 'package:e_commerce/features/home/domain/use_cases/get_categories_use_cases.dart';
import 'package:e_commerce/features/home/presentation/manager/home_states.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/categorie_tab.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/favorite_tab.dart';
import 'package:e_commerce/features/home/presentation/pages/tabs/home_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../../data/data_sources/home_data_sources.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeDataSources homeDataSources;

  HomeCubit(this.homeDataSources) : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of(context);
  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);
  int selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;
  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;
  Color selectedColor = Colors.black;
  Color unselectedColor = Colors.blueGrey;
  List<Widget>tabs=[Home_tab(),Favorite_tab(),Categorie_tab(),];

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
