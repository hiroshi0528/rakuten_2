import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rakuten_2/models/item.dart';
import 'package:rakuten_2/product/view/product_details_page.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({
    super.key,
  });

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  List<Item> _items = []; // データ格納用
  final int _maxItems = 40;

  @override
  void initState() {
    super.initState();
    fetchItems(); // データ取得
  }

  Future<void> fetchItems() async {
    const url = 'https://app.rakuten.co.jp/services/api/IchibaItem/Ranking/'
        '20220601?format=json&applicationId=1079517384079750325';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          // アイテム数を制限し、Itemオブジェクトのリストに変換
          _items = (data['Items'] ?? [])
              .take(_maxItems)
              .map<Item>((item) => Item.fromJson(item['Item']))
              .toList();
        });
      } else {
        throw Exception('Failed to load items');
      }
    } catch (e) {
      print('エラーが発生しました: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('おすすめ'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 0.65,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          if (index >= _items.length) {
            return SizedBox(); // 範囲外の場合には空のウィジェットを返す
          }
          final item = _items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(
                    item: item,
                  ),
                ),
              );
            },
            child: Card(
              // elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  // 画像
                  SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: Image.network(
                      item.mediumImageUrls.isNotEmpty
                          ? item.mediumImageUrls[0]['imageUrl']
                          : 'https://via.placeholder.com/80',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // 名前
                  Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // 価格
                  Row(
                    children: [
                      const SizedBox(width: 8),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${item.itemPrice}円',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
