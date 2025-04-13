import 'package:flutter/material.dart';

class PlaceholderCard extends StatelessWidget {
  const PlaceholderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 600),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: value,
            child: child,
          ),
        );
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white.withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Icon(Icons.crop_square, size: 60, color: Colors.redAccent),
              SizedBox(height: 16),
              Text(
                'Placeholder Layout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(height: 24),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Placeholder(
                    color: Colors.redAccent,
                    strokeWidth: 2,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Digunakan sebagai penanda layout sementara',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
