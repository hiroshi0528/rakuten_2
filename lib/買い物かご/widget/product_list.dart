import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../models/item.dart';
import '../../providers/selected_products.dart';

class ProductList extends ConsumerWidget {
  final List<Item> selectedProducts;

  const ProductList({
    super.key,
    required this.selectedProducts,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1),
                side: const BorderSide(color: Colors.grey),
              ),
              child: ListView.builder(
                shrinkWrap: true, // リストビューのサイズを調整
                physics: const NeverScrollableScrollPhysics(), // スクロールを無効化
                itemCount: selectedProducts.length,
                itemBuilder: (context, index) {
                  final product = selectedProducts[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // 商品画像
                        Image.network(
                          product.mediumImageUrls.isNotEmpty
                              ? product.mediumImageUrls[0]['imageUrl']
                              : '',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 商品名
                              Text(
                                product.itemName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              // 商品価格
                              Text(
                                '価格　${NumberFormat("#,##0").format(
                                  int.parse(product.itemPrice),
                                )}円',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        // 削除ボタン
                        TextButton(
                          child: const Text(
                            '削除する',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {
                            // 商品を削除
                            ref
                                .read(selectedItemsProvider.notifier)
                                .removeItem(product);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
