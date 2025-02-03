import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../providers/run_king_provider.dart';
import 'run_king_card.dart';
import 'run_king_loading.dart';

class HomeRunKingList extends ConsumerWidget {
  const HomeRunKingList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(RunKingItemProvider);
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
                          3, (index) => const RunKingLoading()) // ローディング
                      : items.map((item) => RunKingCard(item: item)).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
