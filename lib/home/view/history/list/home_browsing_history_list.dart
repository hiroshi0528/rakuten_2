import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/home/view/history/list/history_card.dart';
import 'package:rakuten_2/home/view/history/list/history_loading.dart';
import 'package:rakuten_2/providers/history_provider.dart';

class HomeBrowsingHistoryList extends ConsumerWidget {
  const HomeBrowsingHistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(HistoryResultProvider);
    final isLoading = items.isEmpty; // データが空ならローディング

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: isLoading
                      ? List.generate(
                          3, (index) => const HistoryLoading()) // ローディング
                      : items.map((item) => HistoryCard(item: item)).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
