import 'package:flutter/material.dart';

class FavoritesScrollScreen extends StatelessWidget {
  const FavoritesScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お気に入り'),
      ),
      body: Center(child:
      Text('お気に入り'),
      ),
    );
  }
}
