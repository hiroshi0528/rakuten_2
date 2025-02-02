import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rakuten_2/providers/selected_products.dart';

import '../widget/empty_cart_message.dart';
import '../widget/product_list.dart';

class ShoppingCartScreen extends ConsumerWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedProducts = ref.watch(selectedItemsProvider);

    print("selectedProducts is empty: ${selectedProducts.isEmpty}"); // デバッグ用

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '買い物かご',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height, // 最低限の高さを確保
          ),
          child: Column(
            children: [
              selectedProducts.isEmpty
                  ? SizedBox(
                      height: 200,
                      child: const EmptyCartMessage(),
                    )
                  : ProductList(selectedProducts: selectedProducts),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            ],
          ),
        ),
      ),
    );
  }
}
