import 'package:flutter/material.dart';
import 'package:rakuten_2/models/item.dart';
import 'package:rakuten_2/product/view/widget/product_image.dart';
import 'package:rakuten_2/product/view/widget/product_item_caption.dart';

class ProductDetailsPage extends StatefulWidget {
  final Item item;
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
    final parsedDetails = _parseItemCaption(widget.item.itemCaption);
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

/// テキストをセクションごとに解析する関数
Map<String, List<String>> _parseItemCaption(String caption) {
  final Map<String, List<String>> sections = {};

  // セクションキーワード (柔軟に変更可能)
  final keywordPattern = RegExp(
      r'(品\s*番：|発売日：|収録内容：|特典：|Blu-ray：|使用方法 : '
      r'|有効成分 : |その他の成分 : |商品区分 : |内容量 : |メーカー : |生産国 : |'
      r'|賞味期限)',
      multiLine: true);
  final matches = keywordPattern.allMatches(caption);

  if (matches.isEmpty) {
    sections['商品詳細'] = [caption.trim()]; // セクションがない場合は「その他」にまとめる
    return sections;
  }

  for (int i = 0; i < matches.length; i++) {
    final start = matches.elementAt(i).start;
    final end = (i + 1 < matches.length)
        ? matches.elementAt(i + 1).start
        : caption.length;

    // セクションタイトルを抽出
    final key = caption
        .substring(matches.elementAt(i).start, matches.elementAt(i).end)
        .replaceAll(RegExp(r'：$'), '')
        .trim();

    // セクション内容を抽出し番号付きリストに分割
    final value = caption.substring(start, end).replaceFirst(key, '').trim();
    sections[key] = _splitIntoNumberedItems(value);
  }

  // キーワードに該当しないテキストを「その他」に追加
  final allMatchedText = matches.map((m) => m.group(0) ?? '').join();
  final unmatchedText = caption.replaceAll(allMatchedText, '').trim();

  if (unmatchedText.isNotEmpty) {
    sections['その他'] ??= [];
    sections['その他']!.add(unmatchedText);
  }

  return sections;
}

/// 番号付きリストまたは箇条書きリストに分割
List<String> _splitIntoNumberedItems(String text) {
  final List<String> items = [];
  final numberedPattern = RegExp(r'(\d+．|\d+\)|−|・)'); // 番号や箇条書きのパターン
  final matches = numberedPattern.allMatches(text);

  if (matches.isEmpty) {
    items.add(text.trim());
    return items;
  }

  for (int i = 0; i < matches.length; i++) {
    final start = matches.elementAt(i).start;
    final end =
        (i + 1 < matches.length) ? matches.elementAt(i + 1).start : text.length;

    items.add(text.substring(start, end).trim());
  }

  return items;
}
