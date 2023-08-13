import 'package:buxim_xei/components/buxim_navigation_bar.dart';
import 'package:buxim_xei/container/container_di.dart';
import 'package:buxim_xei/interactors/ingredient_interactor.dart';
import 'package:buxim_xei/screens/ingredients/ingredients_screen.dart';
import 'package:buxim_xei/screens/recipes/recipes_screen.dart';
import 'package:buxim_xei/screens/shopping/shopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ingredients/ingredients_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => IngredientsCubit(
            getIt.get<IngredientsInteractor>(),
          ),
        ),
      ],
      child: Scaffold(
        body: GestureDetector(
            // onPanUpdate: updateIndexByGesture,
            child: [
          RecipesScreen(),
          IngredientsScreen(),
          ShoppingScreen(),
        ][selectedScreenIndex]),
        bottomNavigationBar: NavBar(
          currIndex: selectedScreenIndex,
          onTapDest: selectIndex,
        ),
      ),
    );
  }

  void selectIndex(int index) {
    setState(() {
      selectedScreenIndex = index;
    });
  }

  // void updateIndexByGesture(DragUpdateDetails details) {
  //   if (details.delta.dx > 5 && (selectedScreenIndex - 1 >= 0)) {
  //     setState(() {
  //       selectedScreenIndex = selectedScreenIndex - 1;
  //     });
  //   }

  //   if (details.delta.dx < -5 && (selectedScreenIndex + 1 <= 2)) {
  //     setState(() {
  //       selectedScreenIndex = selectedScreenIndex + 1;
  //     });
  //   }
  // }
}
