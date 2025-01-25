import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: 'キーワード検索',
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          prefixIcon: const Icon(
            Icons.search,
            size: 25,
          ),
          prefixIconColor: Colors.black,
          fillColor: Color.fromRGBO(198, 198, 198, 1),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.white), // 非フォーカス時
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.white), // フォーカス時
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mic_none_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}