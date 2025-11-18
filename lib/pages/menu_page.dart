import 'package:flutter/material.dart';
import 'checkout_page.dart';

class MenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> makanan = [
    {"nama": "Nasi Goreng", "harga": 15000},
    {"nama": "Ayam Geprek", "harga": 18000},
    {"nama": "Mie Ayam", "harga": 12000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Makanan")),
      body: ListView.builder(
        itemCount: makanan.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(makanan[index]["nama"]),
            subtitle: Text("Rp ${makanan[index]["harga"]}"),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CheckoutPage(
                      nama: makanan[index]["nama"],
                      harga: makanan[index]["harga"],
                    ),
                  ),
                );
              },
              child: Text("Pesan"),
            ),
          );
        },
      ),
    );
  }
}
