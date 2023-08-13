import 'package:bloc/bloc.dart';
import 'package:buxim_xei/domain/ingredient.dart';
import 'package:buxim_xei/interactors/ingredient_interactor.dart';
import 'package:buxim_xei/screens/ingredients/ingredients_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class IngredientsCubit extends Cubit<IngredientsState> {
  final IngredientsInteractor interactor;
  late List<IngredientVO> ingredients;

  IngredientsCubit(this.interactor) : super(InitialIngredientState());

  Future<void> fetchIngredients() async {
    emit(LoadingIngredientState());
    ingredients = await interactor.getIngredients();
    emit(LoadedIngredientState(ingredients));
  }
}
