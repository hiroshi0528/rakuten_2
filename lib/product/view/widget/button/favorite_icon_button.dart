import 'package:flutter/material.dart';
import 'package:rakuten_2/models/item.dart';

class FavoriteIconButton extends StatefulWidget {
  final Item item;

  const FavoriteIconButton({super.key, required this.item});

  @override
  FavoriteIconButtonState createState() => FavoriteIconButtonState();
}

class FavoriteIconButtonState extends State<FavoriteIconButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.star : Icons.star_border_outlined,
        color: isFavorite ? Colors.red : Colors.grey,
        size: 25,
      ),
    );
  }
}
