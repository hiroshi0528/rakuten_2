import 'package:flutter/material.dart';
import 'package:rakuten_2/%E3%81%8A%E6%B0%97%E3%81%AB%E5%85%A5%E3%82%8A/widget/empty_favorite_message.dart';
import 'package:rakuten_2/%E3%81%8A%E6%B0%97%E3%81%AB%E5%85%A5%E3%82%8A/widget/favorite_list.dart';
import 'package:rakuten_2/providers/favorites_products.dart';
import '../favorites_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteItems = ref.watch(favoriteProvider);
    return Scaffold(
      appBar: AppBar(
        title: FavoritesAppBar(),
      ),
      body: favoriteItems.isEmpty
          ? const EmptyFavoriteMessage()
          : const FavoriteList(),
    );
  }
}
