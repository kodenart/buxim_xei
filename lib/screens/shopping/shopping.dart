import 'package:flutter/material.dart';
import '../../components/loading_widget.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  final String title = 'O que comprar?';

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
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
    );
  }
}
