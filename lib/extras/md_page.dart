import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:flutter/services.dart' show rootBundle;

// 必须在 Scaffold 使用
class MarkdownPage extends StatelessWidget {
  final String filePath;

  const MarkdownPage(this.filePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: loadMarkdownData(filePath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.all(20),
            child: buildMarkdown(snapshot.data!),
          ),
        );
      },
    );
  }

  Future<String> loadMarkdownData(String path) async {
    return await rootBundle.loadString(path);
  }

  Widget buildMarkdown(String data) => MarkdownWidget(
        data: data,
        config: MarkdownConfig(
            /* configs: [const H2Config(style: TextStyle(color: Colors.red))] */),
      );
}
