import 'package:bloc/bloc.dart';
import 'package:e_commerce/app.dart';
import 'package:e_commerce/core/utils/observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer=MyBlocObserver();
  runApp(MyApp());
}


