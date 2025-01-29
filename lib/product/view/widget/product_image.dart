import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rakuten_2/models/item.dart';
import 'package:rakuten_2/product/view/widget/button/add_to_cart_button.dart';
import 'package:rakuten_2/product/view/widget/button/favorite_icon_button.dart';

class ProductCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              item.itemName,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 260,
              child: PageView.builder(
                controller: pageController,
                itemCount: item.mediumImageUrls.length,
                onPageChanged: onPageChanged,
                itemBuilder: (context, index) {
                  return Image.network(
                    item.mediumImageUrls[index]['imageUrl'] ??
                        'https://via.placeholder.com/80',
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '${currentPage + 1}/${item.mediumImageUrls.length}',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FavoriteIconButton(item: item), // IconButton を独立化
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: NumberFormat("#,##0")
                          .format(int.parse(item.itemPrice)),
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
                child: AddToCartButton(item: item), // TextButton を独立化
              ),
            ),
          ],
        ),
      ),
    );
  }
}
