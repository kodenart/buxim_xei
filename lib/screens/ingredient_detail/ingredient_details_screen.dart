import 'package:flutter/material.dart';
import '../../components/loading_widget.dart';

class IngredientDetailsScreen extends StatefulWidget {
  const IngredientDetailsScreen({super.key});

  final String title = 'Buxim Xei';

  @override
  State<IngredientDetailsScreen> createState() =>
      _IngredientDetailsScreenState();
}

class _IngredientDetailsScreenState extends State<IngredientDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
        ),
      ),
      body: const LoadingWidget(),
      bottomNavigationBar: NavigationBar(destinations: []),
    );
  }
}
