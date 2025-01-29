import 'package:flutter/material.dart';
import 'package:rakuten_2/home/view/%E3%81%8A%E3%81%99%E3%81%99%E3%82%81/home_recommendation_list.dart';
import 'package:rakuten_2/home/view/%E3%81%8A%E6%B0%97%E3%81%AB%E5%85%A5%E3%82%8A/home_favorites_list.dart';
import 'package:rakuten_2/home/view/%E3%82%A4%E3%83%81%E3%82%AA%E3%82%B7/home_highly_list.dart';
import 'package:rakuten_2/home/view/%E3%82%A4%E3%83%81%E3%82%AA%E3%82%B7/screen/highly_screen.dart';
import 'package:rakuten_2/home/view/%E3%83%A9%E3%83%B3%E3%82%AD%E3%83%B3%E3%82%B0/home_run_king_list.dart';
import 'package:rakuten_2/home/view/%E3%83%A9%E3%83%B3%E3%82%AD%E3%83%B3%E3%82%B0/screen/run_king_screen.dart';
import 'package:rakuten_2/home/view/%E9%96%B2%E8%A6%A7%E5%B1%A5%E6%AD%B4/home_browsing_history_list.dart';
import 'package:rakuten_2/home/view/%E9%96%B2%E8%A6%A7%E5%B1%A5%E6%AD%B4/screen/browsing_history_screen.dart';
import '../home/view/おすすめ/screen/recommendation_screen.dart';
import '../お気に入り/screen/favorites_screen.dart';

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
