import 'package:buxim_xei/models/ingredient_model.dart';

import '../domain/recipe.dart';

// import 'package:buxim_xei/models/ingredient_model.dart';

class RecipeModel {
  final String id;
  final List<IngredientModel> ingredients;
  // final List<IngredientModel> ingredients;
  final String name;
  final int time;

  RecipeModel({
    required this.id,
    required this.ingredients,
    required this.name,
    required this.time,
  });

  static RecipeModel toModel(dynamic fromJson) {
    return RecipeModel(
      id: fromJson['id'] as String,
      name: fromJson['name'] as String,
      time: fromJson['quantity'] as int,
      ingredients: (fromJson['ingredients'] as List<Map<String, dynamic>>)
          .map((e) => IngredientModel.fromJson(e))
          .toList(),
      // ingredients: (fromJson['ingredients'] as List<>).map((e) => IngredientModel(e)).toList();
    );
  }

  RecipeVO toVO() => RecipeVO(
      id: id,
      name: name,
      time: time,
      ingredients: ingredients.map((e) => e.toVO()).toList());
}
