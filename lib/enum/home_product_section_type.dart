import 'package:flutter/material.dart';
import 'package:rakuten_2/home/view/favorites/home_favorites_list.dart';

import '../home/view/highly/list/home_highly_list.dart';
import '../home/view/highly/screen/highly_screen.dart';
import '../home/view/history/list/home_browsing_history_list.dart';
import '../home/view/history/screen/browsing_history_screen.dart';
import '../home/view/recommendation/list/home_recommendation_list.dart';
import '../home/view/recommendation/screen/recommendation_screen.dart';
import '../home/view/runKing/list/home_run_king_list.dart';
import '../home/view/runKing/screen/run_king_screen.dart';
import '../tabFavorite/screen/favorites_screen.dart';

enum ProductSectionType {
  recommendation,
  favorite,
  highlyRecommended,
  runKing,
  browsingHistory,
}

extension ProductSectionTypeEx on ProductSectionType {
  String get label {
    switch (this) {
      case ProductSectionType.recommendation:
        return 'おすすめ';
      case ProductSectionType.favorite:
        return 'お気に入り';
      case ProductSectionType.highlyRecommended:
        return '今日のイチオシ';
      case ProductSectionType.runKing:
        return 'ランキング';
      case ProductSectionType.browsingHistory:
        return '閲覧履歴';
    }
  }

  Icon get iconData {
    switch (this) {
      case ProductSectionType.recommendation:
        return Icon(Icons.next_plan_outlined);
      case ProductSectionType.favorite:
        return Icon(Icons.next_plan_outlined);
      case ProductSectionType.highlyRecommended:
        return Icon(Icons.next_plan_outlined);
      case ProductSectionType.runKing:
        return Icon(Icons.next_plan_outlined);
      case ProductSectionType.browsingHistory:
        return Icon(Icons.next_plan_outlined);
    }
  }

  Widget get navigator {
    switch (this) {
      case ProductSectionType.recommendation:
        return RecommendationScreen();
      case ProductSectionType.favorite:
        return FavoritesScreen();
      case ProductSectionType.highlyRecommended:
        return HighlyScreen();
      case ProductSectionType.runKing:
        return RunKingScreen();
      case ProductSectionType.browsingHistory:
        return BrowsingHistoryScreen();
    }
  }

  Widget get card {
    switch (this) {
      case ProductSectionType.recommendation:
        return HomeRecommendationList();
      case ProductSectionType.favorite:
        return HomeFavoritesList();
      case ProductSectionType.highlyRecommended:
        return HomeHighlyList();
      case ProductSectionType.runKing:
        return HomeRunKingList();
      case ProductSectionType.browsingHistory:
        return HomeBrowsingHistoryList();
    }
  }
}
