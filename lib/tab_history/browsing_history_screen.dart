import 'package:flutter/material.dart';
import 'browsing_history_app_bar.dart';

class PurchaseHistoryScreen extends StatelessWidget {
  const PurchaseHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BrowsingHistoryAppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Center(
              child: Text('購入履歴'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
            ),
          ],
        ),
      ),
    );
  }
}
