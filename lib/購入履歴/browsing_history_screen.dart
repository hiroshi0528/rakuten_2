import 'package:flutter/material.dart';
import 'browsing_history_app_bar.dart';

class PurchaseHistoryScreen extends StatelessWidget {
  const PurchaseHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BrowsingHistoryAppBar()),
      body: Center(
        child: Text('購入履歴'),
      ),
    );
  }
}
