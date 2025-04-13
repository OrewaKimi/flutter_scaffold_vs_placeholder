import 'package:flutter/material.dart';

class ScaffoldCard extends StatelessWidget {
  const ScaffoldCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: const Text(
              'Contoh Scaffold',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Ini adalah layout dengan Scaffold\nMemiliki AppBar, FAB, dan struktur lengkap',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: Icon(Icons.add_circle, size: 40, color: Colors.indigo),
          ),
        ],
      ),
    );
  }
}
