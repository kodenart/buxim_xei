import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currIndex;
  final void Function(int) onTapDest;
  const NavBar({super.key, required this.currIndex, required this.onTapDest});
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: MediaQuery.of(context).size.height / 12,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.receipt_rounded),
          label: 'Receitas',
        ),
        NavigationDestination(
          icon: Icon(Icons.shelves),
          label: 'Ingredientes',
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_cart),
          label: 'Feira',
        ),
      ],
      selectedIndex: currIndex,
      onDestinationSelected: onTapDest,
    );
  }
}
