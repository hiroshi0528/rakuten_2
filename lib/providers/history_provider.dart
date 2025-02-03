import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../models/history/history_result.dart';

class HistoryResultNotifier extends StateNotifier<List<HistoryResult>> {
  HistoryResultNotifier() : super([]) {
    fetchItems();
  }

  Future<void> fetchItems() async {
    if (state.isNotEmpty) return;

    const url =
        'https://app.rakuten.co.jp/services/api/Recipe/CategoryRanking/20170426'
        '?format=json&applicationId=1079517384079750325';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data.containsKey('result') && data['result'] is List) {
          state = (data['result'] as List).map((item) {
            if (item is Map<String, dynamic>) {
              return HistoryResult.fromJson(item);
            } else {
              throw Exception('データ形式が不正です');
            }
          }).toList();
        } else {
          throw Exception('APIのレスポンスが予期しない形式です');
        }
      } else {
        throw Exception('データの取得に失敗しました (${response.statusCode})');
      }
    } catch (e) {
      print('エラーが発生しました: $e');
    }
  }
}

final HistoryResultProvider =
    StateNotifierProvider<HistoryResultNotifier, List<HistoryResult>>(
  (ref) => HistoryResultNotifier(),
);
