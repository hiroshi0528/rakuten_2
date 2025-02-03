import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          child: Image.asset(
            'assets/images/unnamed.webp',
            fit: BoxFit.contain,
          ),
        ),
        IconButton(
          onPressed: () async {
            var url = Uri.parse(
                'https://app.rakuten.co.jp/services/api/IchibaItem/Ranking/20220601?format=json&applicationId=1079517384079750325');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');

            print(await http.read(Uri.https('example.com', 'foobar.txt')));
          },
          icon: const Icon(
            Icons.menu_sharp,
            size: 30,
          ),
        ),
        Expanded(
          child: SizedBox(
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
                  fontSize: 12,
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
                fillColor: Color.fromRGBO(198, 198, 198, 1),
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 12,
                ),
                suffixIcon: IconButton(
                  onPressed: () async {
                    var url = Uri.parse(
                        'https://app.rakuten.co.jp/services/api/IchibaItem/Ranking/20220601?format=json&applicationId=1079517384079750325');
                    var response = await http.get(url);
                    print('Response status: ${response.statusCode}');
                    print('Response body: ${response.body}');

                    print(await http
                        .read(Uri.https('example.com', 'foobar.txt')));
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            var url = Uri.parse(
                'https://app.rakuten.co.jp/services/api/IchibaGenre/Search/20140222?format=json&genreId=559887&applicationId=1079517384079750325');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');

            print(await http.read(Uri.https('example.com', 'foobar.txt')));
          },
          child: Text(
            'ジャンル',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
