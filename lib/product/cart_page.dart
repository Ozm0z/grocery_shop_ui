import 'package:flutter/material.dart';
import 'package:grocery_shop_ui/model/cart_model.dart';
import 'package:grocery_shop_ui/product/language_items.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.myCart)),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: CartModel().cartItems.length,
                  itemBuilder: (context, index) {
                    return const ListTile(title: Text('aaaaa'));
                  }))
        ],
      ),
    );
  }
}
