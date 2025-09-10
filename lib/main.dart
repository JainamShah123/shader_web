import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // so HTML background is visible
      appBar: AppBar(
        title: const Text("HTML Background + Flutter Widgets"),
        backgroundColor: Colors.black.withOpacity(0.5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(
              400, // 20 * 20
              (index) {
                final color = Colors.primaries[index % Colors.primaries.length];
                return Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: color.shade400,
                    borderRadius: BorderRadius.circular(8),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
