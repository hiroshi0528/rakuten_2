import 'package:flutter/material.dart';
import 'package:rakuten_2/tabSearch/search_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Center(
              child: Text('探す'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
            ),
          ],
        ),
      ),
    );
  }
}
