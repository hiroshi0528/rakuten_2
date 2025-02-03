import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:rakuten_2/models/recommendation/item.dart';

// データ取得＆管理する Notifier
class RecommendationItemNotifier
    extends StateNotifier<List<RecommendationItem>> {
  RecommendationItemNotifier() : super([]) {
    fetchItems(); // 初期化時にデータ取得
  }

  Future<void> fetchItems() async {
    if (state.isNotEmpty) return; // すでにデータがあれば再取得しない

    const url = 'https://app.rakuten.co.jp/services/api/IchibaItem/Ranking/'
        '20220601?format=json&applicationId=1079517384079750325';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        state = (data['Items'] as List)
            .map((item) => RecommendationItem.fromJson(item['Item']))
            .toList();
      } else {
        throw Exception('データの取得に失敗しました');
      }
    } catch (e) {
      print('エラーが発生しました: $e');
    }
  }
}

// Riverpod の Provider
final RecommendationItemProvider =
    StateNotifierProvider<RecommendationItemNotifier, List<RecommendationItem>>(
  (ref) => RecommendationItemNotifier(),
);
