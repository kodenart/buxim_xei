import 'package:buxim_xei/domain/ingredient.dart';

class IngredientModel {
  final String id;
  final String name;
  final int quantity;

  IngredientModel({
    required this.id,
    required this.name,
    required this.quantity,
  });

  factory IngredientModel.fromJson(Map<String, dynamic> fromJson) {
    return IngredientModel(
      id: fromJson['id'],
      name: fromJson['name'],
      quantity: fromJson['quantity'],
    );
  }

  IngredientVO toVO() => IngredientVO(
        id: id,
        name: name,
        quantity: quantity,
      );
}
