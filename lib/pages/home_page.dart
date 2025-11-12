import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _placeholderBox({double? height, double? width}) {
    return Container(
      height: height ?? 100,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home (Wireframe Style)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _placeholderBox(height: 150),
            const SizedBox(height: 20),
            _placeholderBox(height: 20, width: 120),
            const SizedBox(height: 10),
            _placeholderBox(height: 20, width: 180),
            const SizedBox(height: 30),
            _placeholderBox(height: 100),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detail'),
              child: const Text('Ke Halaman Detail'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              child: const Text('Ke Halaman Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
