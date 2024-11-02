import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:grocery_shop_ui/intro_page_view.dart';
import 'package:grocery_shop_ui/product/language_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // * appbar ekleyince geri gitme üçgeni çıktığı için appbarsız bir tasarım olucak bu sayfada
        //appBar: AppBar(title: const Text('Buraya appbar  eklersek böyle oluyo')),
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //location and profile picture
          const _Location_Profile(),
          const SizedBox(height: 10),

          //Selamlama texti
          Padding(
            padding: HomePaddingUtility.padHo24,
            child: Text(
              '${LanguageItems.hello} isim_verisi',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: ColorUtility.grey,
                  ),
            ),
          ),

          //Let's order fresh items for you
          Padding(
            padding: HomePaddingUtility.padHo24.copyWith(top: 10),
            child: Text(
              maxLines: 2,
              LanguageItems.slogan1,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),

          //divider
          const Divider(
            thickness: 4,
          ),
          const SizedBox(height: 24),

          //fresh items + grid
          Padding(
            padding: HomePaddingUtility.padHo24,
            child: Text(
              LanguageItems.freshItems,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    //!burda kaldım devam edilecek
                    // return GroceryItemTiles()
                    return null;
                  }))
        ],
      ),
    ));
  }
}

// ignore: camel_case_types
class _Location_Profile extends StatelessWidget {
  const _Location_Profile();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, //! container alanı görmek için açıldı, kapatılacak
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //lokasyon için buton
          Padding(
            padding: HomePaddingUtility.padAll5,
            child: TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              onPressed: () {
                //* lokasyon seçimi fonksionu
              },
              icon: const Icon(Icons.location_on_outlined),
              label: const Text('lokasyon_verisi'),
            ),
          ),

          //! paket kullanıldı: flutter_profile_picture: ^2.0.0
          //profil pic
          const Padding(
            padding: HomePaddingUtility.padAll5,
            child: ProfilePicture(
              name: 'isim verisi',
              radius: 25,
              fontsize: 25,
              count: 2,
              tooltip: true, //!web için mantıklı olduğundan açık bırakıldı ama isteğe bağlı bu parametre silinebilir
            ),
          )
        ],
      ),
    );
  }
}

class HomePaddingUtility {
  static const padAll5 = EdgeInsets.all(5);
  static const padHo24 = EdgeInsets.symmetric(horizontal: 24);
}
