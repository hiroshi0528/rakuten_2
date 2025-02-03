import 'package:flutter/material.dart';
import 'package:rakuten_2/models/recommendation/item.dart';
import 'package:rakuten_2/product/recommendation/view/widget/product_card.dart';
import 'package:rakuten_2/product/recommendation/view/widget/product_item_caption.dart';
import 'package:rakuten_2/product/recommendation/view/widget/utils.dart';

class ProductDetailsPage extends StatefulWidget {
  final RecommendationItem item;
  const ProductDetailsPage({
    super.key,
    required this.item,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final parsedDetails = parseItemCaption(widget.item.itemCaption); // 修正
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '商品詳細',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProductCard(
              item: widget.item,
              pageController: _pageController,
              currentPage: _currentPage,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
            const SizedBox(height: 10),
            DetailsCard(parsedDetails: parsedDetails),
          ],
        ),
      ),
    );
  }
}
