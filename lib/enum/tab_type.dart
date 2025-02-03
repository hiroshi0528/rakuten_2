import 'package:flutter/material.dart';
import 'package:rakuten_2/tabMore/more_screen.dart';
import 'package:rakuten_2/tabSearch/search_screen.dart';
import 'package:rakuten_2/tabShopping/screen/shopping_cart_screen.dart';
import 'package:rakuten_2/tab_history/browsing_history_screen.dart';
import 'package:rakuten_2/tabFavorite/screen/favorites_screen.dart';
import '../home/view/home/home_screen.dart';

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
