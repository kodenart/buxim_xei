import 'package:buxim_xei/domain/ingredient.dart';

abstract class IngredientsRepository {
  Future<List<IngredientVO>> getAll();
}
