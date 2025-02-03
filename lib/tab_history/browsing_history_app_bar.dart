import 'package:flutter/material.dart';

class BrowsingHistoryAppBar extends StatelessWidget {
  const BrowsingHistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.help_outline_sharp,
            color: Colors.red,
            size: 30,
          ),
        ),
        const SizedBox(width: 26),
        Text(
          '購入履歴',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(width: 0),
        TextButton(
          onPressed: () {},
          child: Text(
            '絞込み',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
