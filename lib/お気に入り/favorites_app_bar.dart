import 'package:flutter/material.dart';

class FavoritesAppBar extends StatelessWidget {
  const FavoritesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 64),
        Text(
          'お気に入り',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 55),
        TextButton(
          onPressed: () {},
          child: Text(
            '編集',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
