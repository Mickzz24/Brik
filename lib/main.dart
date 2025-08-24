import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BRIK App Track',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> brands = [
    {
      'name': 'Shield Defense',
      'tagline': 'Secure the Future',
      'color': Colors.blueGrey,
      'icon': Icons.security
    },
    {
      'name': 'FinTrust',
      'tagline': 'Bank on Confidence',
      'color': Colors.indigo,
      'icon': Icons.account_balance
    },
    {
      'name': 'IndusMakers',
      'tagline': 'Building Stronger Tomorrow',
      'color': Colors.orange,
      'icon': Icons.factory
    },
    {
      'name': 'CodeCraft',
      'tagline': 'Shaping Digital Dreams',
      'color': Colors.deepPurple,
      'icon': Icons.computer
    },
    {
      'name': 'EcoLife',
      'tagline': 'Green for Generations',
      'color': Colors.green,
      'icon': Icons.eco
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover Brands"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: brands.length,
        itemBuilder: (context, index) {
          var brand = brands[index];
          return Card(
            color: brand['color'],
            margin: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              leading: Icon(brand['icon'], color: Colors.white, size: 40),
              title: Text(brand['name'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              subtitle: Text(brand['tagline'],
                  style: TextStyle(color: Colors.white70)),
              onTap: () {
                // Navigate to brand detail page (optional)
              },
            ),
          );
        },
        
      ),
    );
  }
}
