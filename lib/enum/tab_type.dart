import 'package:flutter/material.dart';
import 'package:rakuten_2/%E3%81%8A%E6%B0%97%E3%81%AB%E5%85%A5%E3%82%8A/screen/favorites_screen.dart';
import 'package:rakuten_2/%E3%82%82%E3%81%A3%E3%81%A8%E8%A6%8B%E3%82%8B/more_screen.dart';
import 'package:rakuten_2/%E6%8E%A2%E3%81%99/search_screen.dart';
import 'package:rakuten_2/%E8%B2%B7%E3%81%84%E7%89%A9%E3%81%8B%E3%81%94/screen/shopping_cart_screen.dart';
import 'package:rakuten_2/%E8%B3%BC%E5%85%A5%E5%B1%A5%E6%AD%B4/browsing_history_screen.dart';
import '../home/home_screen.dart';

enum TabType {
  home,
  search,
  favorites,
  shoppingCart,
  purchaseHistory,
  more,
}

extension TabTypeEx on TabType {
  String get label {
    switch (this) {
      case TabType.home:
        return 'ホーム';
      case TabType.search:
        return '探す';
      case TabType.favorites:
        return 'お気に入り';
      case TabType.shoppingCart:
        return '買い物かご';
      case TabType.purchaseHistory:
        return '購入履歴';
      case TabType.more:
        return 'もっと見る';
    }
  }

  Widget get iconWidget {
    switch (this) {
      case TabType.home:
        return Icon(Icons.home_outlined);
      case TabType.search:
        return Icon(Icons.search);
      case TabType.favorites:
        return Icon(Icons.star_border);
      case TabType.shoppingCart:
        return Icon(Icons.shopping_cart_outlined);
      case TabType.purchaseHistory:
        return Image.asset('assets/icons/internet_shopping_history_9654.png',
            width: 25, height: 25);
      case TabType.more:
        return Icon(Icons.more_horiz);
    }
  }

  Widget get navigator {
    switch (this) {
      case TabType.home:
        return HomeScreen();
      case TabType.search:
        return SearchScreen();
      case TabType.favorites:
        return FavoritesScreen();
      case TabType.shoppingCart:
        return ShoppingCartScreen();
      case TabType.purchaseHistory:
        return PurchaseHistoryScreen();
      case TabType.more:
        return MoreScreen();
    }
  }
}
