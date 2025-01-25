import 'package:flutter/material.dart';
import 'package:rakuten_2/%E6%8E%A2%E3%81%99/search_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchAppBar(),
      ),
      body: Center(
        child: Text('探す'),
      ),
    );
  }
}
