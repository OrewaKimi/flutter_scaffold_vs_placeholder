import 'package:flutter/material.dart';

class ScaffoldCard extends StatelessWidget {
  const ScaffoldCard({super.key});

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
              Icon(Icons.phone_android, size: 60, color: Colors.deepPurple),
              SizedBox(height: 16),
              Text(
                'Scaffold Layout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(height: 24),
              Text(
                'Ini adalah struktur halaman Flutter lengkap\n'
                'dengan AppBar, Body, FAB, dsb.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.add_circle, size: 36, color: Colors.deepPurple),
              SizedBox(height: 8),
              Text(
                'Floating Action Button',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
