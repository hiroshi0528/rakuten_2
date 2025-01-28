import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rakuten_2/models/item.dart';
import 'package:rakuten_2/providers/selected_products.dart';

class ProductCard extends ConsumerStatefulWidget {
  final Item item;
  final PageController pageController;
  final int currentPage;
  final ValueChanged<int> onPageChanged;

  const ProductCard({
    super.key,
    required this.item,
    required this.pageController,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  ConsumerState<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends ConsumerState<ProductCard> {
  @override
  Widget build(BuildContext context) {
    // 現在の選択状態を取得
    final selectedItems = ref.watch(selectedItemsProvider);
    final isSelected = selectedItems.contains(widget.item);

    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              widget.item.itemName,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 260,
              child: PageView.builder(
                controller: widget.pageController,
                itemCount: widget.item.mediumImageUrls.length,
                onPageChanged: widget.onPageChanged,
                itemBuilder: (context, index) {
                  return Image.network(
                    widget.item.mediumImageUrls[index]['imageUrl'] ??
                        'https://via.placeholder.com/80',
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '${widget.currentPage + 1}/${widget.item.mediumImageUrls.length}',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  // 商品選択状態を切り替え
                  final notifier = ref.read(selectedItemsProvider.notifier);
                  if (isSelected) {
                    notifier.removeItem(widget.item);
                  } else {
                    notifier.addItem(widget.item);
                  }
                },
                icon: Icon(
                  isSelected ? Icons.star : Icons.star_border_outlined,
                  color: isSelected ? Colors.red : Colors.grey,
                  size: 25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: NumberFormat("#,##0")
                          .format(int.parse(widget.item.itemPrice)),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const TextSpan(
                      text: '円',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const TextSpan(
                      text: '(税込)',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: Card(
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    // 商品を選択した場合の処理（ここにカスタムロジックを追加）
                    final notifier = ref.read(selectedItemsProvider.notifier);
                    if (!isSelected) {
                      notifier.addItem(widget.item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${widget.item.itemName}をカートに追加しました。'),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
