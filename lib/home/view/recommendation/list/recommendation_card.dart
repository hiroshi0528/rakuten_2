import 'package:flutter/material.dart';
import 'package:rakuten_2/models/recommendation/item.dart';
import 'package:rakuten_2/product/recommendation/view/product_details_page.dart';

class RecommendationCard extends StatelessWidget {
  final RecommendationItem item;

  const RecommendationCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print('${item.itemName} をクリックしました');
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsPage(item: item)),
          );
        },
        child: Container(
          width: 120,
          height: 200,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                item.mediumImageUrls[0]['imageUrl'],
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, size: 80);
                },
              ),
              const SizedBox(height: 8),
              Text(
                item.itemName,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
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
  }
}
