import 'package:flutter/material.dart';

class HighlyScreen extends StatelessWidget {
  const HighlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('今日のイチオシ'),
      ),
      body: Center(child:
      Text('今日のイチオシ'),
      ),
    );
  }
}
