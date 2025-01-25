import 'package:flutter/material.dart';
import 'favorites_app_bar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FavoritesAppBar(),
      ),
      body: Center(
        child: Text('お気に入り'),
      ),
    );
  }
}
