import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      {'icon': Icons.history, 'text': '閲覧履歴', 'onTap': () => print('閲覧')},
      {
        'icon': Icons.onetwothree,
        'text': 'ランキング',
        'onTap': () => print('ランキング')
      },
      {
        'icon': Icons.remove_red_eye,
        'text': 'フィード',
        'onTap': () => print('フィード')
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'もっと見る',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                elevation: 2,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: options.length,
                  separatorBuilder: (_, __) =>
                      const Divider(thickness: 0.3, indent: 40),
                  itemBuilder: (context, index) {
                    final item = options[index];
                    return ListTile(
                      leading: Icon(item['icon'] as IconData),
                      title: Text(item['text'] as String),
                      onTap: item['onTap'] as void Function(),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.65),
          ],
        ),
      ),
    );
  }
}
