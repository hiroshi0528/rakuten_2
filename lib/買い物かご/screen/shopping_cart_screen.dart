import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/providers/selected_products.dart';
import '../view/empty_cart_message.dart';
import '../view/product_list.dart';

class ShoppingCartScreen extends ConsumerWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProducts = ref.watch(selectedItemsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '買い物かご',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: selectedProducts.isEmpty
          ? const EmptyCartMessage()
          : ProductList(selectedProducts: selectedProducts),
    );
  }
}
