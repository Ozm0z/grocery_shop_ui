import 'package:flutter/material.dart';

class GroceryItemTiles extends StatelessWidget {
  GroceryItemTiles({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.itemColor,
    required this.onPressed,
  });

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final itemColor;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(),
          color: itemColor[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imagePath,
              height: 70,
            ),
            //item name
            Text(itemName),
            //price + btton
            MaterialButton(
              onPressed: onPressed,
              color: itemColor[800],
              child: Text(
                '\$$itemPrice',
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
