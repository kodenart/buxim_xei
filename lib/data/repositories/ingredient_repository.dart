import 'package:buxim_xei/data/interfaces/ingredients_repository.dart';
import 'package:buxim_xei/domain/ingredient.dart';
import 'package:buxim_xei/models/ingredient_model.dart';
import 'package:injectable/injectable.dart';

import '../datasource/read_json.dart';

@Injectable(as: IngredientsRepository)
class IngredientsRepositoryJson
    with ReadJsonFiles
    implements IngredientsRepository {
  // ignore: annotate_overrides
  Future<List<IngredientVO>> getAll() async {
    var jsonIngredients =
        await readJsonFile('assets/json/ingredient_mock.json');
    var result = (jsonIngredients['data'] as List<dynamic>)
        .map((e) => IngredientModel.fromJson(e).toVO())
        .toList();
    return result;
  }
}
