import 'package:flutter/material.dart';
import 'package:rakuten_2/models/highly/highly_item.dart';
import 'view/widget/highly_product_card.dart';

class HighlyProductDetailsPage extends StatefulWidget {
  final HighlyItem item;
  const HighlyProductDetailsPage({
    super.key,
    required this.item,
  });

  @override
  State<HighlyProductDetailsPage> createState() =>
      _HighlyProductDetailsPageState();
}

class _HighlyProductDetailsPageState extends State<HighlyProductDetailsPage> {
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
            HighlyProductCard(
              item: widget.item,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
