import 'package:flutter/material.dart';

class BrowsingHistoryScreen extends StatelessWidget {
  const BrowsingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('閲覧履歴'),
      ),
      body: Center(
        child: Text('閲覧履歴'),
      ),
    );
  }
}
