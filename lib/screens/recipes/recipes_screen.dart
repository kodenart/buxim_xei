import 'package:flutter/material.dart';
import '../../components/loading_widget.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  final String title = 'Receitas';

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
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
      // bottomNavigationBar: ,
    );
  }
}
