import 'package:flutter/material.dart';

class HomeFavoritesList extends StatelessWidget {
  const HomeFavoritesList({super.key});

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
                  width: 500,
                  height: 150,
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
                  child: Column(
                    children: [
                      Text('data'),
                    ],
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
