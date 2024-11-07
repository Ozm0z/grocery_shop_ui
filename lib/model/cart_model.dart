import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List shopItems = [
    //[itemname, itemprice, imagePath, color]
    ['Avocado', '4.00', 'assets/avocado.png', Colors.green],
    ['Banana', '2.50', 'assets/banana.png', Colors.yellow],
    ['Chicken', '12.80', 'assets/chicken_leg.png', Colors.brown],
    ['Water', '1.00', 'assets/water_bottle.png', Colors.blue],
  ];

  //list of the cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  //get shopItems => _shopItems;

// add item to cart
  void addItemToCart(int index) {
    _cartItems.add(shopItems[index]);
    notifyListeners();
  }

//remove item from cart
  void removeItemToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

//calculate toteal price
  String calculateTotel() {
    double totalPrice = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
