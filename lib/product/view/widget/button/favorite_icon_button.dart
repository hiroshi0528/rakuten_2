import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/models/item.dart';
import 'package:rakuten_2/providers/favorites_products.dart';

// 一度押したアイテムを追跡するための Provider
final lockedFavoritesProvider = StateProvider<Set<Item>>((ref) => {});

class FavoriteIconButton extends ConsumerWidget {
  final Item item;

  const FavoriteIconButton({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteItems = ref.watch(favoriteProvider);
    final lockedFavorites = ref.watch(lockedFavoritesProvider);
    final isFavorite = favoriteItems.contains(item);
    final isLocked = lockedFavorites.contains(item);

    return IconButton(
      onPressed: isLocked
          ? null // 一度押したら無効化
          : () {
        ref.read(favoriteProvider.notifier).toggleFavorite(item);
        ref.read(lockedFavoritesProvider.notifier).state =
        {...lockedFavorites, item}; // ボタンをロックする
      },
      icon: Icon(
        isFavorite ? Icons.star : Icons.star_border_outlined,
        color: isFavorite ? Colors.red : Colors.grey,
        size: 25,
      ),
    );
  }
}
