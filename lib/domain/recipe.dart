import 'package:buxim_xei/domain/ingredient.dart';

class RecipeVO {
  final String id;
  final List<IngredientVO> ingredients;
  final String name;
  final int time;

  RecipeVO({
    required this.id,
    required this.ingredients,
    required this.name,
    required this.time,
  });
}
