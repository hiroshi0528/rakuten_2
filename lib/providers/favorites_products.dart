import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/models/item.dart';

// favorites 管理用の StateNotifier
class FavoritesProductsNotifier extends StateNotifier<Set<Item>> {
  FavoritesProductsNotifier() : super({});

  // 商品を追加
  void addFavorite(Item item) {
    state = {...state, item};
  }

  // 商品を削除
  void removeFavorite(Item item) {
    state = {...state}..remove(item);
  }

  // お気に入りに登録されているか確認
  bool isFavorite(Item item) {
    return state.contains(item);
  }
}

// favorites プロバイダ
final favoritesProvider =
    StateNotifierProvider<FavoritesProductsNotifier, Set<Item>>(
  (ref) => FavoritesProductsNotifier(),
);
