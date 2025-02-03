import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/providers/run_king_provider.dart';
import 'view/run_king_screen_list.dart';

class RunKingScreen extends ConsumerWidget {
  const RunKingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsNotifier = ref.read(RunKingItemProvider.notifier);
    final items = ref.watch(RunKingItemProvider);

    // 📌 初回のみ fetchItems を実行
    if (items.isEmpty) {
      Future.microtask(() => itemsNotifier.fetchItems());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ランキング'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const RunKingScreenList(),
        ],
      ),
    );
  }
}
