import 'package:flutter/material.dart';
import 'package:rakuten_2/models/runKing/run_king_item.dart';
import 'package:rakuten_2/product/runKing/view/widget/run_king_product_card.dart';

class RunKingProductDetailsPage extends StatefulWidget {
  final RunKingItem item;
  const RunKingProductDetailsPage({
    super.key,
    required this.item,
  });

  @override
  State<RunKingProductDetailsPage> createState() =>
      _RunKingProductDetailsPageState();
}

class _RunKingProductDetailsPageState extends State<RunKingProductDetailsPage> {
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
            RunKingProductCard(
              item: widget.item,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
