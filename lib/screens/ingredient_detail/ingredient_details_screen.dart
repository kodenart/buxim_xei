import 'package:buxim_xei/domain/ingredient.dart';
import 'package:flutter/material.dart';
import '../../components/loading_widget.dart';

class IngredientDetailsScreen extends StatefulWidget {
  const IngredientDetailsScreen({super.key});

  @override
  State<IngredientDetailsScreen> createState() =>
      _IngredientDetailsScreenState();
}

class _IngredientDetailsScreenState extends State<IngredientDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final availableHeight = MediaQuery.of(context).size.height;
    final availableWidth = MediaQuery.of(context).size.width;
    final IngredientVO ingredient =
        ModalRoute.of(context)!.settings.arguments as IngredientVO;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ingredient.name,
        ),
      ),
      body: SizedBox(
        height: availableHeight,
        width: availableWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: availableHeight * 0.6,
              width: availableWidth * 0.9,
              child: const Image(
                image: AssetImage(
                  'assets/images/kafra.png',
                ),
              ),
            ),
            const Divider(),
            _quantityForm(
              availableWidth,
              availableHeight,
              title: 'Quantidade',
            ),
            const Divider(),
            _quantityForm(
              availableWidth,
              availableHeight,
              title: 'Quantidade Ideal',
            ),
          ],
        ),
      ),
    );
  }

  _quantityForm(availableWidth, availableHeight, {required String title}) {
    return SizedBox(
      width: availableWidth,
      height: availableHeight * .1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(availableWidth * 0.048),
                  ),
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.add),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  // boxShadow: [BoxShadow(color: Colors.black)],
                ),
                width: availableWidth * 0.5,
                height: availableHeight * 0.055,
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(availableWidth * 0.048),
                  ),
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.remove),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
