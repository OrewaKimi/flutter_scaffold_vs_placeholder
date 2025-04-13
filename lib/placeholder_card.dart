import 'package:flutter/material.dart';

class PlaceholderCard extends StatelessWidget {
  const PlaceholderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: const Text(
              'Contoh Placeholder',
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Placeholder(
                color: Colors.red,
                strokeWidth: 2,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Ini hanya tampilan dummy sementara',
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
