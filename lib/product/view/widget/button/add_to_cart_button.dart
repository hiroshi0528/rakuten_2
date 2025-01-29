import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/models/item.dart';
import 'package:rakuten_2/providers/selected_products.dart';

class AddToCartButton extends ConsumerWidget {
  final Item item;

  const AddToCartButton({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedItems = ref.watch(selectedItemsProvider);
    final isSelected = selectedItems.contains(item);

    return TextButton(
      onPressed: () {
        final notifier = ref.read(selectedItemsProvider.notifier);
        if (!isSelected) {
          notifier.addItem(item);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '${item.itemName}をカートに追加しました。',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            '買い物かごに入れる',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
