import 'package:flutter/material.dart';
import 'package:grocery_shop_ui/home_page.dart';
import 'package:grocery_shop_ui/product/image_paths.dart';
import 'package:grocery_shop_ui/product/language_items.dart';

class IntroPageView extends StatelessWidget {
  const IntroPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingUtility.paddingAll,
        child: Column(
          children: [
            const SizedBox(height: 25),

            //Shopping cart img
            Image.asset(ImagePaths().shoppingCart),

            //main text: We deliver ...
            Padding(
              padding: PaddingUtility.paddingMainTitle,
              child: Text(
                textAlign: TextAlign.center,
                LanguageItems.mainTitle,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
              ),
            ),

            //subtitle
            Text(
              LanguageItems.subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            //get started button
            Padding(
              padding: PaddingUtility.paddingTextButton,
              child: TextButton(
                onPressed: () {
                  //tıklanınca diğer sayfaya gitmesini sağlayacak fonksiyon
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  fixedSize: const Size(250, 50),
                ),
                child: Text(
                  LanguageItems.getStarted,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //by Ozm0z
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                LanguageItems.ozm0z,
                style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaddingUtility {
  static const paddingAll = EdgeInsets.all(10.0);
  static const paddingMainTitle = EdgeInsets.all(24.0);
  static const paddingTextButton = EdgeInsets.all(50.0);
}
