import 'package:flutter/material.dart';
import 'package:grocery_shop_ui/intro_page_view.dart';

void main() {
  runApp(const GroceryUI());
}

class GroceryUI extends StatelessWidget {
  const GroceryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery UI Clone App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPageView(),
    );
  }
}
