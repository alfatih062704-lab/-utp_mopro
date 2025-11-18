import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  final String nama;
  final int harga;

  CheckoutPage({required this.nama, required this.harga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Detail Pesanan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Menu: $nama"),
            Text("Harga: Rp $harga"),
            SizedBox(height: 30),
            
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Pesanan berhasil dikirim!")),
                );
              },
              child: Text("Konfirmasi Pesanan"),
            ),
          ],
        ),
      ),
    );
  }
}
