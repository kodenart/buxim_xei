import 'package:buxim_xei/components/buxim_navigation_bar.dart';
import 'package:buxim_xei/data/ingredient_repository.dart';
import 'package:buxim_xei/screens/ingredients_screen.dart';
import 'package:buxim_xei/screens/recipes_screen.dart';
import 'package:buxim_xei/screens/shopping.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onPanUpdate: updateIndexByGesture,
          child: [
            RecipesScreen(),
            IngredientsScreen(
              ingredientRepository: IngredientRepository(),
            ),
            ShoppingScreen()
          ][selectedScreenIndex]),
      bottomNavigationBar: NavBar(
        currIndex: selectedScreenIndex,
        onTapDest: selectIndex,
      ),
    );
  }

  void selectIndex(int index) {
    setState(() {
      selectedScreenIndex = index;
    });
  }

  void updateIndexByGesture(DragUpdateDetails details) {
    if (details.delta.dx > 15 && (selectedScreenIndex - 1 >= 0)) {
      setState(() {
        selectedScreenIndex = selectedScreenIndex - 1;
      });
    }

    if (details.delta.dx < -15 && (selectedScreenIndex + 1 <= 2)) {
      setState(() {
        selectedScreenIndex = selectedScreenIndex + 1;
      });
    }
  }
}
