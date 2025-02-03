import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/product/recommendation/view/product_details_page.dart';
import 'package:rakuten_2/product/recommendation/view/widget/button/favorite_icon_button.dart';
import 'package:rakuten_2/providers/favorites_products.dart';

class FavoriteList extends ConsumerWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteItems = ref.watch(favoriteProvider); // お気に入り商品リストを取得

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.55,
        ),
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          if (index >= favoriteItems.length) {
            return SizedBox(); // 範囲外の場合には空のウィジェットを返す
          }
          final item = favoriteItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(
                    item: item,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        height: 180,
                        child: Image.network(
                          item.mediumImageUrls.isNotEmpty
                              ? item.mediumImageUrls[0]['imageUrl']
                              : 'https://via.placeholder.com/80',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.itemName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const SizedBox(width: 8),
                          Text(
                            '${item.itemPrice}円',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 50),
                          TextButton(
                            child: Text(
                              '削除',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            onPressed: () {
                              ref
                                  .read(favoriteProvider.notifier)
                                  .removeFavorite(item);

                              // lockedFavorites からも削除して再度追加できるようにする
                              ref.read(lockedFavoritesProvider.notifier).state =
                                  {
                                ...ref
                                    .read(lockedFavoritesProvider.notifier)
                                    .state
                              }..remove(item);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
