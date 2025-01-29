import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/product/view/product_details_page.dart';
import 'package:rakuten_2/providers/favorites_products.dart';

class HomeFavoritesList extends ConsumerWidget {
  const HomeFavoritesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteItems = ref.watch(favoriteProvider);

    // お気に入りが空なら何も表示しない
    if (favoriteItems.isEmpty) {
      return SizedBox.shrink(); // 何も表示しない
    }

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Stack(
            children: [
              // 浮き上がった箱
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.white, // ボックスの背景色
                    borderRadius: BorderRadius.circular(15), // 角丸
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // 影の色
                        blurRadius: 5, // 影のぼかし
                        offset: Offset(0, 0), // 影を下にずらす
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: favoriteItems.map((item) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProductDetailsPage(item: item);
                                  },
                                ),
                              );
                              print('${item.itemName} tapped');
                            },
                            child: Container(
                              width: 120,
                              height: 400,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // 画像を表示
                                  Image.network(
                                    item.mediumImageUrls.isNotEmpty
                                        ? item.mediumImageUrls[0]['imageUrl']
                                        : '',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8),
                                  // 名前を表示
                                  Text(
                                    item.itemName,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                  ),
                                  const SizedBox(height: 4),
                                  // 価格を表示
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${item.itemPrice}円',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}