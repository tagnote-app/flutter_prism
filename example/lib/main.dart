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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const code = '''
// Dart language
void main() {
    const message = "Hello World!";
    print(message);
}
''';
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final prism = Prism(
      style: !isDarkMode ? const PrismStyle() : const PrismStyle.dark(),
    );
    final textSpans = prism.render(code, 'dart');

    return Scaffold(
      appBar: AppBar(
        title: const Text('dart_prism example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: isDarkMode
                  ? const Color(0xFF2575EE)
                  : const Color(0xff06157D),
              height: 1.5,
              fontSize: 18,
              fontFamily: 'monospace',
            ),
            children: textSpans,
          ),
        ),
      ),
    );
  }
}
