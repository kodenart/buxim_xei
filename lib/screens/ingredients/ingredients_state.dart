import 'package:buxim_xei/domain/ingredient.dart';

abstract class IngredientsState {}

class InitialIngredientState extends IngredientsState {}

class LoadingIngredientState extends IngredientsState {}

class LoadedIngredientState extends IngredientsState {
  final List<IngredientVO> ingredients;

  LoadedIngredientState(this.ingredients);
}

class ErrorIngredientState extends IngredientsState {
  final String error;

  ErrorIngredientState(this.error);
}
