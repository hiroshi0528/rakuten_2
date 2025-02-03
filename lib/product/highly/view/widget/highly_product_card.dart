import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rakuten_2/models/highly/highly_item.dart';

class HighlyProductCard extends StatelessWidget {
  final HighlyItem item;

  const HighlyProductCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item.japaneseTitle,
                      maxLines: 2,
                      style:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 260,
                    width: 260,
                    child: Image.network(
                      item.mediumImageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: NumberFormat("#,##0")
                                .format(int.parse(item.itemPrice.toString())),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '商品説明',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(item.itemCaption),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.3),
      ],
    );
  }
}
