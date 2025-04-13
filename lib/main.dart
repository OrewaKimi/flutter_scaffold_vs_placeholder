import 'package:flutter/material.dart';
import 'scaffold_card.dart';
import 'placeholder_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold vs Placeholder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ComparisonScreen(),
    );
  }
}

class ComparisonScreen extends StatelessWidget {
  const ComparisonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Scaffold vs Placeholder"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B0082), Color(0xFF8A2BE2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: screenWidth < 600
            ? Column(
                children: const [
                  Expanded(child: ScaffoldCard()),
                  SizedBox(height: 16),
                  Expanded(child: PlaceholderCard()),
                ],
              )
            : Row(
                children: const [
                  Expanded(child: ScaffoldCard()),
                  SizedBox(width: 16),
                  Expanded(child: PlaceholderCard()),
                ],
              ),
      ),
    );
  }
}
