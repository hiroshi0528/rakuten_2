import 'package:flutter/material.dart';

class EmptyFavoriteMessage extends StatelessWidget {
  const EmptyFavoriteMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ), // 画面の高さの20%を確保
            Center(
              // 中央寄せ
              child: Column(
                children: [
                  Icon(Icons.star_border_outlined, size: 200),
                  Text(
                    '商品が追加されていません',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '商品をお気に入りに追加してください',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ), // 画面の高さの30%を確保
          ],
        ),
      ),
    );
  }
}
