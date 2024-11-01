import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //TODO #1 appbar ekleyince geri gitme üçgeni çıktığı için appbarsız bir tasarım olucak bu sayfada
        //appBar: AppBar(title: const Text('Buraya appbar  eklersek böyle oluyo')),
        body: SafeArea(
      child: Column(
        children: [SizedBox(height: 25), Text('data')],
      ),
    ));
  }
}
