import 'package:flutter/material.dart';
import 'package:rakuten_2/providers/favorites_products.dart';
import 'package:rakuten_2/tabFavorite/widget/empty_favorite_message.dart';
import 'package:rakuten_2/tabFavorite/widget/favorite_list.dart';
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
