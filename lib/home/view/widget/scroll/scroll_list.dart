import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/enum/home_product_section_type.dart';
import 'package:rakuten_2/enum/tab_type.dart';
import 'package:rakuten_2/tab/tab_screen.dart';
import 'package:rakuten_2/providers/favorites_products.dart';

class ProductSection extends ConsumerWidget {
  const ProductSection({
    super.key,
    required this.type,
  });

  final ProductSectionType type;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (type == ProductSectionType.favorite) {
      final favoriteItems = ref.watch(favoriteProvider);
      if (favoriteItems.isEmpty) {
        return SizedBox.shrink();
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  type.label,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.next_plan_outlined,
                  color: Colors.red,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => type.navigator,
                    ),
                  );
                  final tabNotifier = ref.read(tabNotifierProvider.notifier);
                  tabNotifier.setTab(TabType.home);
                },
              ),
            ],
          ),
          type.card,
        ],
      ),
    );
  }
}
