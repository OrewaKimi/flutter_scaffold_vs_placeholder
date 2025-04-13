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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
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
      appBar: AppBar(
        title: const Text("Scaffold vs Placeholder"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
