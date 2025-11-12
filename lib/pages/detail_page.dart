import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: const Center(child: Icon(Icons.image, size: 60)),
            ),
            const SizedBox(height: 20),
            Container(
              height: 20,
              width: 200,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
