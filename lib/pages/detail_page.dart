import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Widget _wireBox(double h, double w) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail (Wireframe)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _wireBox(200, double.infinity),
            const SizedBox(height: 20),
            _wireBox(20, 200),
            const SizedBox(height: 10),
            _wireBox(100, double.infinity),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _wireBox(40, 100),
                _wireBox(40, 100),
                _wireBox(40, 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
