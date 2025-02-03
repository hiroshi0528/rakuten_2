import 'package:flutter/material.dart';
import 'package:rakuten_2/models/history/history_result.dart';
import 'package:rakuten_2/product/history/view/widget/history_product_card.dart';

class HistoryProductDetailsPage extends StatefulWidget {
  final HistoryResult item;
  const HistoryProductDetailsPage({
    super.key,
    required this.item,
  });

  @override
  State<HistoryProductDetailsPage> createState() =>
      _HistoryProductDetailsPageState();
}

class _HistoryProductDetailsPageState extends State<HistoryProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '商品詳細',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HistoryProductCard(
              item: widget.item,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
