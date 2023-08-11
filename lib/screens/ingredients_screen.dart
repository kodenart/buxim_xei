import 'package:buxim_xei/data/ingredient_repository.dart';
import 'package:flutter/material.dart';
import '../components/loading_widget.dart';
import '../domain/ingredient.dart';

class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({
    super.key,
    required this.ingredientRepository,
  });

  final IngredientRepository ingredientRepository;
  final String title = 'Ingredientes';

  @override
  State<IngredientsScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  late Future<List<IngredientVO>> ingredients;

  @override
  void initState() {
    ingredients = widget.ingredientRepository.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
        ),
      ),
      body: SizedBox(
        child: FutureBuilder<List<IngredientVO>>(
          future: ingredients,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: (snapshot.data as List<IngredientVO>)
                    .map((e) => Text(e.name))
                    .toList(),
              );
            }
            return const LoadingWidget();
          },
        ),
      ),
      // bottomNavigationBar: ,
    );
  }
}
