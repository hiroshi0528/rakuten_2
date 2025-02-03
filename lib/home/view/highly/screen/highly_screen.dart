import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/home/view/highly/screen/view/highly_screen_list.dart';
import '../../../../providers/highly_items_provider.dart';

class HighlyScreen extends ConsumerWidget {
  const HighlyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsNotifier = ref.read(highlyItemsProvider.notifier);
    final items = ref.watch(highlyItemsProvider);

    // 📌 初回のみ fetchItems を実行
    if (items.isEmpty) {
      Future.microtask(() => itemsNotifier.fetchItems());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('今日のイチオシ'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const HighlyScreenList(),
        ],
      ),
    );
  }
}
