import 'package:e_commerce/features/home/data/data_sources/home_data_sources.dart';
import 'package:e_commerce/features/home/presentation/manager/home_cubit.dart';
import 'package:e_commerce/features/home/presentation/manager/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeRemoteDTO()),
      child: BlocConsumer<HomeCubit,HomeState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: true,
            extendBody: true,
            body: HomeCubit.get(context).tabs[HomeCubit.get(context).selectedItemPosition],
            appBar: AppBar(
              centerTitle: false,
              title: const Text('Kushk Online', style: TextStyle(color: Colors.black)),
              elevation: 0,
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),

            bottomNavigationBar: SnakeNavigationBar.color(
              behaviour:HomeCubit.get(context).snakeBarStyle,
              snakeShape:HomeCubit.get(context). snakeShape,
              shape:HomeCubit.get(context). bottomBarShape,
              padding:HomeCubit.get(context). padding,
              snakeViewColor: HomeCubit.get(context).selectedColor,
              selectedItemColor: HomeCubit.get(context).snakeShape == SnakeShape.indicator ?HomeCubit.get(context). selectedColor : null,
              unselectedItemColor:HomeCubit.get(context). unselectedColor,
              showUnselectedLabels:HomeCubit.get(context). showUnselectedLabels,
              showSelectedLabels:HomeCubit.get(context). showSelectedLabels,
              currentIndex:HomeCubit.get(context). selectedItemPosition,
              onTap: (index) {

                HomeCubit.get(context). selectedItemPosition = index;
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'microphone'),

                BottomNavigationBarItem(
                    icon: Icon(Icons.category_outlined), label: 'microphone'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'search')
              ],
              selectedLabelStyle: const TextStyle(fontSize: 14),
              unselectedLabelStyle: const TextStyle(fontSize: 10),
            ),
          );
        },

      ),
    );
  }
}

