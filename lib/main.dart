import 'package:flutter/material.dart';
import 'package:flutter_sliver_test/pages/mdx/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markdown渲染',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: '你好'),
      home: const CustomMarkdownWidget(),
    );
  }
}