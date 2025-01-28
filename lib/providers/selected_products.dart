import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/item.dart';

class SelectedProductsNotifier extends StateNotifier<List<Item>> {
  SelectedProductsNotifier() : super([]);

  // 商品を追加
  void addItem(Item item) {
    state = [...state, item];
  }

  // 商品を削除
  void removeItem(Item item) {
    state = state.where((i) => i.itemName != item.itemName).toList();
  }

  // 全商品をクリア
  void clearItems() {
    state = [];
  }
}

// プロバイダーを定義
final selectedItemsProvider =
StateNotifierProvider<SelectedProductsNotifier, List<Item>>(
      (ref) => SelectedProductsNotifier(),
);


