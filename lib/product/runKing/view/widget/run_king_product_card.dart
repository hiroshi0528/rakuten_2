import 'package:flutter/material.dart';
import 'package:rakuten_2/models/runKing/run_king_item.dart';

class RunKingProductCard extends StatelessWidget {
  final RunKingItem item;

  const RunKingProductCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 260,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    item.golfCourseImageUrl ??
                        'https://via.placeholder.com/260',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.broken_image,
                            size: 80, color: Colors.grey),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.golfCourseAbbr ?? '',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        item.golfCourseName ?? '',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        buildStarRating(item.evaluation.toDouble()), // 星評価
                        const SizedBox(width: 10),
                        Text(
                          item.evaluation?.toStringAsFixed(1) ?? '0.0',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.golf_course,
                              color: Colors.grey, size: 30),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.grey),
                        const SizedBox(width: 5),
                        Text(
                          item.address ?? '住所情報なし',
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const Icon(Icons.info, size: 22),
                      const SizedBox(width: 5),
                      const Text(
                        'コース紹介',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item.golfCourseCaption ?? 'コース紹介情報なし'),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.4),
        ],
      ),
    );
  }

  /// 星評価を表示するウィジェット
  Widget buildStarRating(double? evaluation) {
    double rating = evaluation ?? 0.0;
    int fullStars = rating.floor(); // 例: 4.4 → 4 (整数部分)
    bool hasHalfStar = (rating - fullStars) >= 0.5; // 0.5以上なら半分の星を表示
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0); // 残りの空の星

    return Row(
      children: [
        for (int i = 0; i < fullStars; i++)
          const Icon(Icons.star, color: Colors.amber, size: 20),
        if (hasHalfStar)
          const Icon(Icons.star_half, color: Colors.amber, size: 20),
        for (int i = 0; i < emptyStars; i++)
          const Icon(Icons.star_border, color: Colors.grey, size: 20),
      ],
    );
  }
}
