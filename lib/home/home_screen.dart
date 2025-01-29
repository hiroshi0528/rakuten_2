import 'package:flutter/material.dart';
import 'package:rakuten_2/enum/home_product_section_type.dart';
import 'package:rakuten_2/home/view/widget/scroll/scroll_list.dart';
import 'home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 3,
        title: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: ProductSectionType.values.map((type) {
            return ProductSection(type: type);
          }).toList(),
        ),
      ),
    );
  }
}
