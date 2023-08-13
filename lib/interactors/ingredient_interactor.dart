import 'package:buxim_xei/data/interfaces/ingredients_repository.dart';
import 'package:buxim_xei/domain/ingredient.dart';
import 'package:injectable/injectable.dart';

@injectable
class IngredientsInteractor {
  final IngredientsRepository ingredientsRepository;

  IngredientsInteractor(this.ingredientsRepository);

  Future<List<IngredientVO>> getIngredients() async {
    final ingredients = await ingredientsRepository.getAll();
    return ingredients;
  }
}
