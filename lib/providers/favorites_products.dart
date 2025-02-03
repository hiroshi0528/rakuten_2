import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/models/recommendation/item.dart';

class FavoritesProductsNotifier
    extends StateNotifier<List<RecommendationItem>> {
  FavoritesProductsNotifier() : super([]);

  /// お気に入りの追加・削除をトグルする
  void toggleFavorite(RecommendationItem item) {
    if (state.contains(item)) {
      removeFavorite(item);
    } else {
      state = [...state, item];
    }
  }

  /// お気に入りから商品を削除
  void removeFavorite(RecommendationItem item) {
    state = state.where((favItem) => favItem != item).toList();
  }

  /// 指定した商品がお気に入りか判定
  bool isFavorite(RecommendationItem item) {
    return state.contains(item);
  }
}

final favoriteProvider =
    StateNotifierProvider<FavoritesProductsNotifier, List<RecommendationItem>>(
  (ref) => FavoritesProductsNotifier(),
);
