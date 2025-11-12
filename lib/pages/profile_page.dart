import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget _wireRect(double h, double w) {
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
      appBar: AppBar(title: const Text('Profil (Wireframe)')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, size: 60, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            _wireRect(20, 150),
            const SizedBox(height: 20),
            _wireRect(80, double.infinity),
            const SizedBox(height: 20),
            _wireRect(20, 100),
            const SizedBox(height: 10),
            _wireRect(20, 180),
          ],
        ),
      ),
    );
  }
}
