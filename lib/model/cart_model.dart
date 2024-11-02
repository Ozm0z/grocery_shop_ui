import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    //[itemname, itemprice, imagePath, color]
    ['Avocado', '4.00', 'asstes/avocado.png', Colors.green],
    ['Banana', '2.50', 'asstes/banana.png', Colors.yellow],
    ['Chicken', '12.80', 'asstes/chicken_leg.png', Colors.brown],
    ['Water', '1.00', 'asstes/water_bottle.png', Colors.blue],
  ];

  get shopItems => _shopItems;
}
