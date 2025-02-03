import 'package:flutter/material.dart';

class RunKingLoading extends StatelessWidget {
  const RunKingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 200,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 100,
              height: 14,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 4),
            Container(
              width: 50,
              height: 12,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
