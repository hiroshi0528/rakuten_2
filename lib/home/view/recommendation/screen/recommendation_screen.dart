import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/home/view/recommendation/screen/view/recommendition_screen_list.dart';
import 'package:rakuten_2/providers/recommendation_provider.dart';

class RecommendationScreen extends ConsumerWidget {
  const RecommendationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsNotifier = ref.read(RecommendationItemProvider.notifier);
    final items = ref.watch(RecommendationItemProvider);

    if (items.isEmpty) {
      Future.microtask(() => itemsNotifier.fetchItems());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('おすすめ'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const RecommendationScreenList(),
        ],
      ),
    );
  }
}
