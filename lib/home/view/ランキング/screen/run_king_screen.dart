import 'package:flutter/material.dart';

class RunKingScreen extends StatelessWidget {
  const RunKingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ランキング'),
      ),
      body: Center(
        child: Text('ランキング'),
      ),
    );
  }
}
