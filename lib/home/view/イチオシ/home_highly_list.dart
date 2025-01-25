import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'freezed/home_highly_freezed.dart';

class HomeHighlyList extends StatefulWidget {
  const HomeHighlyList({super.key});

  @override
  State<HomeHighlyList> createState() => _HomeHighlyListState();
}

class _HomeHighlyListState extends State<HomeHighlyList> {
  List<HomeHighlyItem> _items = []; // データ格納用
  final int _maxItems = 20;

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
          // アイテム数を制限し、HomeHighlyItemオブジェクトのリストに変換
          _items = (data['Items'] ?? [])
              .take(_maxItems)
              .map<HomeHighlyItem>(
                  (item) => HomeHighlyItem.fromJson(item['Item']))
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
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Stack(
            children: [
              // 浮き上がった箱
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.white, // ボックスの背景色
                    borderRadius: BorderRadius.circular(15), // 角丸
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // 影の色
                        blurRadius: 5, // 影のぼかし
                        offset: Offset(0, 0), // 影を下にずらす
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: _items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              print('${item.itemName} tapped');
                            },
                            child: Container(
                              width: 120,
                              height: 200,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // 画像を表示
                                  Image.network(
                                    item.mediumImageUrls.isNotEmpty
                                        ? item.mediumImageUrls[0]['imageUrl']
                                        : '',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8),
                                  // 名前を表示
                                  Text(
                                    item.itemName,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  // 価格を表示
                                  Text(
                                    '¥${item.itemPrice}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
