import 'package:flutter/material.dart';
import 'package:flutter_prism/flutter_prism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const code = '// Dart language\nconst message = "Hello World!";';
    const language = 'dart';

    final prism = Prism(
      style: PrismStyle(
        root: const TextStyle(
          color: Colors.black87,
          fontSize: 22,
          height: 1.3,
        ),
      ),
    );
    final textSpan = prism.render(code, language);

    return Scaffold(
      appBar: AppBar(
        title: const Text('dart_prism example'),
      ),
      body: Center(
        child: RichText(
          text: textSpan,
        ),
      ),
    );
  }
}
