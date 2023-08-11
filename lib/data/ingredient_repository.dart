import 'package:buxim_xei/domain/ingredient.dart';
import 'package:buxim_xei/models/ingredient_model.dart';

import './read_json.dart';

class IngredientRepository with ReadJsonFiles {
  Future<List<IngredientVO>> getAll() async {
    var jsonIngredients =
        await readJsonFile('assets/json/ingredient_mock.json');
    var result = (jsonIngredients['data'] as List<dynamic>)
        .map((e) => IngredientModel.fromJson(e).toVO())
        .toList();
    return result;
  }
}
