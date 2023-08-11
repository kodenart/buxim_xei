import './read_json.dart';

class RecipeRepository with ReadJsonFiles {
  getRecipes() async {
    Map<String, dynamic> jsonRecipes =
        await readJsonFile('./utils/recipe_mock.json') as Map<String, dynamic>;
    return jsonRecipes['data'] as List<Map<String, dynamic>>;
  }
}
