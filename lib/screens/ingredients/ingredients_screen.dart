import 'package:buxim_xei/screens/ingredients/ingredients_cubit.dart';
import 'package:buxim_xei/screens/ingredients/ingredients_state.dart';
import 'package:buxim_xei/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/loading_widget.dart';
import '../../domain/ingredient.dart';

class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({
    super.key,
  });

  final String title = 'Ingredientes';

  @override
  State<IngredientsScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  late final IngredientsCubit cubit;

  _IngredientsScreenState();

  @override
  void initState() {
    cubit = BlocProvider.of<IngredientsCubit>(context);
    cubit.fetchIngredients();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.title,
          ),
        ),
        body: BlocBuilder<IngredientsCubit, IngredientsState>(
          bloc: cubit,
          builder: (context, state) {
            if (state is LoadingIngredientState) return const LoadingWidget();
            if (state is LoadedIngredientState) {
              return _IngredientList(ingredients: state.ingredients);
            }
            return Container(
              child: Text('Algo deu errado.'),
            );
          },
        ),
      ),
    );
    // bottomNavigationBar: ,
  }
}

class _IngredientList extends StatelessWidget {
  final List<IngredientVO> ingredients;
  const _IngredientList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          _IngredientTile(ingredient: ingredients[index]),
      itemCount: ingredients.length,
      separatorBuilder: (__, _) => const Divider(),
    );
  }
}

class _IngredientTile extends StatelessWidget {
  final IngredientVO ingredient;
  const _IngredientTile({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _selectIngredient(context),
      title: Text(ingredient.name),
      subtitle: Text(ingredient.quantity.toString()),
      trailing: GestureDetector(
        onTap: () => {},
        child: const Icon(Icons.edit),
      ),
    );
  }

  void _selectIngredient(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      AppRoutes.ingredientsDetails,
      arguments: ingredient,
    );
  }
}
