import 'package:flutter/material.dart';

class GroceryItemTiles extends StatelessWidget {
  const GroceryItemTiles({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  });

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
