import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/providers/history_provider.dart';
import 'view/history_screen_list.dart';

class BrowsingHistoryScreen extends ConsumerWidget {
  const BrowsingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsNotifier = ref.read(HistoryResultProvider.notifier);
    final items = ref.watch(HistoryResultProvider);

    // 📌 初回のみ fetchItems を実行
    if (items.isEmpty) {
      Future.microtask(() => itemsNotifier.fetchItems());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('閲覧履歴'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const HistoryScreenList(),
        ],
      ),
    );
  }
}
