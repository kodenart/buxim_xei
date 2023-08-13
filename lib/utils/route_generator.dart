import 'package:buxim_xei/data/repositories/ingredient_repository.dart';
import 'package:buxim_xei/data/repositories/recipe_repository.dart';
import 'package:buxim_xei/screens/home/home_screen.dart';
import 'package:buxim_xei/screens/ingredient_detail/ingredient_details_screen.dart';
import 'package:buxim_xei/screens/ingredients/ingredients_screen.dart';
import 'package:buxim_xei/screens/recipes/recipes_screen.dart';
import 'package:buxim_xei/screens/shopping/shopping.dart';
import 'package:buxim_xei/utils/app_routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.recipes:
        return MaterialPageRoute(builder: (_) => const RecipesScreen());
      case AppRoutes.ingredients:
        return MaterialPageRoute(builder: (_) => IngredientsScreen());
      case AppRoutes.ingredientsDetails:
        return MaterialPageRoute(
            builder: (_) => const IngredientDetailsScreen());
      case AppRoutes.shopping:
        return MaterialPageRoute(builder: (_) => const ShoppingScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(child: Text('Error, página não encontrada')),
      ),
    );
  }
}
